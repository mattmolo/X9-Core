module.exports = {
    dearflask: {
        thrusters: {
            desired_thrust: [
                0, // x:     forwards and backwards
                0, // y:     strafe left or right
                0, // z:     ascend / descend
                0, // roll:  roll to the left or right
                0, // pitch: nose up or down
                0 // yaw:   left or right rotation
            ],
            disabled_thrusters: [],
            thruster_scales: [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
        },
        valve_turner: {
            power: 0.0
        },
        claw: {
            power: 0.0
        },
        fountain_tool: {
            power: 0.0
        },
        cameras: {},
        leds: {
            bluetooth_led: false,
            camera_leds: false
        }
    },
    dearclient: {
        IMU: {
            x: 3, y: 4, z: 2,
            pitch: 6, roll: -4, yaw: 0.243
        },
        pressure: {
            pressure: 7,
            temperature: 4
        },
        thrusters: [0, 0, 0, 0, 0, 0, 0, 0],
        cameras: {
            Cam_0: {'port': '8080', status: "active"},
            Cam_1: {'port': '8081', status: "active"},
            Cam_2: {'port': '8082', status: "active"},
            Cam_3: {'port': '8083', status: "active"},
            Cam_4: {'port': '8084', status: "active"},
            Cam_5: {'port': '8085', status: "active"}
        },
        cam_cur: 8080,
    }
};
