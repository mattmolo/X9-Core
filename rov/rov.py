from time import time, sleep


from threading import Lock
import copy
import os


from sensors import Pressure, IMU
# from thrusters import Thrusters
# from thrusters import ThrustMapper
from thrusters import AltThrusters
# from camera.cam import Camera


class ROV(object):

    def __init__(self):
        self._data = {}
        self._control_data = {}
        self._new_data = False
        self._last_packet = time() - 1

        self.last_update = time()
        self.last_print = time()

        self.simple_sensors = {
            "imu": IMU(),
            "pressure": Pressure()
        }

        self._running = True

        # self.mapper = ThrustMapper()
        # self.thrusters = Thrusters()

        # self.camera1 = Camera()
        # self.camera1.on()

        self._data_lock = Lock()

        self._control_data_lock = Lock()

        self.debug = (os.environ.get("ROV_DEBUG") == "1")

        self.thrusters = AltThrusters(
            [True, True, True, True, True, True, True, True],
            [6, 1, 4, 3, 5, 12, 8, 9]
        )

    @property
    def data(self):
        with self._data_lock:
            return copy.deepcopy(self._data)

    @property
    def control_data(self):
        with self._control_data_lock:
            return self._control_data

    @control_data.setter
    def control_data(self, val):
        with self._control_data_lock:
            self._control_data = copy.deepcopy(val)
            self._new_data = True
            self._last_packet = time()

    def debug_print(self):
        if time() - self.last_print > 0.4:
            print '\n\nControl Data: '
            print self.control_data

            print '\n\nROV Data: '
            print self._data

            self.last_print = time()

    def update(self):
        with self._data_lock:


            # Update all simple sensor data and stuff it in data
            for sensor in self.simple_sensors:
                self.simple_sensors[sensor].update()
                self._data[sensor] = self.simple_sensors[sensor].data

            if self._new_data:
                try:
                    control_data = self.control_data
                    self._data['thrusters'] = self.thrusters.calculate_and_set(control_data['gamepad'])
                except Exception as e:
                    print e.message
                self._new_data = False
            elif time() - self._last_packet > 0.5:
                print 'stop the thrusters'
                self.thrusters.stop()

            # Our last update
            self.last_update = time()

            if self.debug:
                self.debug_print()


    def run(self):
        while self._running:
            while time() - self.last_update < 0.01:
                sleep(0.005)

            try:
                self.update()
            except Exception as e:
                print e.message

if __name__ == "__main__":
    r = ROV()
    r.run()
