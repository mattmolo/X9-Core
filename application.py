import multiprocessing

from flask import Flask
from flask_socketio import SocketIO

from rov.rov import ROV

import eventlet
eventlet.sleep()
eventlet.monkey_patch(socket=False, thread=False)

app = Flask(__name__)
socketio = SocketIO(app, async_mode='eventlet')

last_rov = None

manager = multiprocessing.Manager()
lock = manager.Lock()
data = manager.dict()
data["dearclient"] = {}
data["dearflask"] = {}

rov = ROV(lock, data)

@socketio.on('connect')
def on_connect():
    print "Client connected"

@socketio.on('disconnect')
def on_disconnect():
    print "Client disconnected"


@socketio.on('dearflask')
def dearflask(indata):
    global last_rov

    send_packet()

    if indata != last_rov:
        last_rov = indata

        with lock:
            data["dearflask"] = indata

@socketio.on('dearclient')
def dearclient(indata):
    lock.acquire()
    packet = data._getvalue()["dearclient"]
    lock.release()

    socketio.emit("dearclient", packet, json=True)

if __name__ == 'application':
    rov_proc = multiprocessing.Process(target=rov.run)
    rov_proc.start()

    socketio.run(app, use_reloader=False, debug=True, host="0.0.0.0")
