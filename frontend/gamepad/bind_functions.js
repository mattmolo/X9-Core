/*
  Each button can have one of four function types {value, change, press, release}, which
  will each have a func property and a params OBJECT property to go along with it.

  button template:
    btn: {
      value: {
        params: undefined,
        func: null,
      },
      change: {
        params: undefined,
        func: null,
      },
      press: {
        params: undefined,
        func: null,
      },
      release: {
        params: undefined,
        func: null,
      },
    },

  Each axes can have one of two function types {cartesian, polar}, which
  will each have a func function property and a params OBJECT property to go along with it.

  axes template:
    side: {
      cartesian: {
        params: undefined,
        func: null,
      },
      polar: {
        params: undefined,
        func: null,
      },
    },
*/

bind = {
  btn: {
    a: {
      press: {
        func: function() {
          controls.tools.claw = gp.buttons.a.val;
        }
      },
      change: {
        func: function() {
          vue_app.gpinfo.buttons.a = gp.buttons.a.val;
        }
      },
      release: {
        func: function() {
          if(controls.tools.claw > 0) {
            controls.tools.claw = 0;
          }
        },
      },
    },
    b: {
      press: {
        func: function() {
          controls.tools.claw = -gp.buttons.b.val;
        }
      },
      change: {
        func: function() {
          vue_app.gpinfo.buttons.b = gp.buttons.b.val;
        }
      },
      release: {
        func: function() {
          if(controls.force.claw < 0) {
            controls.tools.claw = 0;
          }
        },
      },
    },
    x: {
      press: {
        func: function() {
          controls.tools.valve = gp.buttons.x.val;
        }
      },
      change: {
        func: function() {
          vue_app.gpinfo.buttons.x = gp.buttons.x.val;
        }
      },
      release: {
        func: function() {
          if(controls.tools.valve > 0) {
            controls.tools.valve = 0;
          }
        },
      },
    },
    y: {
      press: {
        func: function() {
          controls.tools.valve = -gp.buttons.y.val;
        }
      },
      change: {
        func: function() {
          vue_app.gpinfo.buttons.y = gp.buttons.y.val;
        }
      },
      release: {
        func: function() {
          if(controls.tools.valve < 0) {
            controls.tools.valve = 0;
          }
        },
      },
    },
    rb: {
      press: {
        func: function() {
          controls.force.roll = gp.buttons.rb.val;
          vue_app.packet.IMU.roll = controls.force.roll;
        },
      },
      release: {
        func: function() {
          if(controls.force.roll > 0) {
            controls.force.roll = 0;
            vue_app.packet.IMU.roll = controls.force.roll;
          }
        },
      },
    },
    lb: {
      press: {
        func: function() {
          controls.force.roll = -gp.buttons.lb.val;
          vue_app.packet.IMU.roll = controls.force.roll;
        },
      },
      release: {
        func: function() {
          if(controls.force.roll < 0) {
            controls.force.roll = 0;
            vue_app.packet.IMU.roll = controls.force.roll;
          }
        },
      },
    },
    rt: {
      change: {
        func: function() {
          if(controls.force.z >= 0) {
            controls.force.z = gp.buttons.rt.val;
            vue_app.packet.IMU.z = controls.force.z;
          }
        },
      },
    },
    lt: {
      change: {
        func: function() {
          if(controls.force.z <= 0) {
            controls.force.z = -gp.buttons.lt.val;
            vue_app.packet.IMU.z = controls.force.z;
          }
        },
      },
    },
  },
  ax: {
    left: {
      cartesian: {
        func: function() {
          controls.force.y = gp.axes.left.x;
          controls.force.x = gp.axes.left.y;
          vue_app.packet.IMU.x = controls.force.x;
          vue_app.packet.IMU.y = controls.force.y;
          vue_app.gpinfo.axes.left.x = gp.axes.left.x;
          vue_app.gpinfo.axes.left.y = gp.axes.left.y;
        },
      },
    },
    right: {
      cartesian: {
        func: function() {
          controls.force.pitch = -gp.axes.right.y;
          controls.force.yaw = gp.axes.right.x;
          vue_app.packet.IMU.pitch = controls.force.pitch;
          vue_app.packet.IMU.yaw = controls.force.yaw;
          vue_app.gpinfo.axes.right.x = gp.axes.right.x;
          vue_app.gpinfo.axes.right.y = gp.axes.right.y;
        },
      },
    },
  },
  activate: function() {
    Object.keys(bind).forEach(function(btn_ax, i) {  //goes through btn or ax
      if(btn_ax != "activate") {
        Object.keys(bind[btn_ax]).forEach(function(piece, j) { //goes through buttons or left and right axes
          Object.keys(bind[btn_ax][piece]).forEach(function(which, k) {  //goes through the individual functions
            //console.log(btn_ax+": "+piece+", "+which);
            gp[btn_ax+"_bind"](piece, which, bind[btn_ax][piece][which].func);
          });
        });
      }
    });
  }
}
