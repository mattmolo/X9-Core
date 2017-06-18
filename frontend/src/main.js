var gp = require("./gamepad")


function main(packets, other) {
    //let socketHost = `http://${document.domain}:${location.port}`
    let socketHost = `ws://raspberrypi.local:5000`
    let socket = io.connect(socketHost, {transports: ['websocket']});

    gp.set()

    function update() {
        if (gp.ready) {
            gp.get_current();

            let ts = other.thrust_scales

            packets.dearflask.thrusters.desired_thrust = [
                //VelX - forwards and backwards
		-gp.axes.right.x * (ts.master/100.0)  * (ts.yaw/100.0),

                //VelY - strafe left and right
                gp.axes.left.x * (ts.master/100.0)  * (ts.velY/100.0) * -1,

                //VelZ - ascend and descend
                (gp.buttons.lb.val - gp.buttons.rb.val) * (ts.master/100.0)  * (ts.velZ/100.0) * -1,

                //Roll
                (gp.buttons.slct.val - gp.buttons.strt.val) * (ts.master/100.0)  * (ts.pitchRoll/100.0),

                //Pitch
                -gp.axes.right.y * (ts.master/100.0)  * (ts.pitchRoll/100.0),

                //Yaw
                -gp.axes.left.y * (ts.master/100.0) * (ts.velX/100.0) * -1

            ]

            let tl = other.tool_scales;
            let clw = (gp.buttons.a.val - gp.buttons.b.val);

            packets.dearflask.valve_turner.power = (gp.buttons.x.val - gp.buttons.y.val) * (tl.vlv_turn.main/100);
            packets.dearflask.fountain_tool.power = (gp.buttons.left.val - gp.buttons.right.val) * (tl.fountain.main/100)
            packets.dearflask.claw.power = clw * (( (clw > 0) ? tl.claw.open : tl.claw.close )/100) * (tl.claw.master/100);

            socket.emit("dearflask", packets.dearflask);
        }

        setTimeout(update, 10)
    }
    update()

    function updateDC(data) {
        packets.dearclient = data
    }

    socket.on("dearclient", updateDC)

    // request new data
    setInterval(() => {
        socket.emit("dearclient")
    }, 50)
}

module.exports = main
