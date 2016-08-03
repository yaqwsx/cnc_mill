# You can use terminal.clear() and terminal.appendText(string) to set term content
# You can use lorris.sendData(list) to send data to device.

import struct

skip = 4

# This function gets called on data received
# it should return string, which is automatically appended to terminal
def onDataChanged(data, dev, cmd, index):
    global skip
    if cmd == ord('R'):
        skip += 1
        if skip == 5:
            skip = 0
            data = struct.pack('<BBcH', 0x80, 2, "R", rpm.getValue())
            lorris.send(data)
    return ""

# This function is called on key press in terminal.
# Param is string
def onKeyPress(key):
    return

# This function is called when data arrives to serial port
# parameter is array with unparsed data
def onRawData(data):
    return

# Called when new widget is added.
# widget is widget's object, name is string
def onWidgetAdd(widget, name):
    return

# Called when new widget is removed.
# widget is widget's object, name is string
def onWidgetRemove(widget, name):
    return

# Called when this script instance is destroyed.
# useful for saving data.
def onScriptExit():
    return

# Called when this analyzer session is saved to data file.
# Useful for saving data.
def onSave():
    return
    
def start_clicked():
    stop_clicked()
    
    data = struct.pack('<BBcf', 0x80, 4, "P", float(p.getValue())/1000)
    lorris.send(data)
    
    data = struct.pack('<BBcf', 0x80, 4, "I", float(i.getValue())/1000)
    lorris.send(data)
    
    data = struct.pack('<BBcf', 0x80, 4, "D", float(d.getValue())/1000)
    lorris.send(data)
    
    data = struct.pack('<BBc', 0x80, 0,  "S")
    lorris.send(data)
    
    terminal.appendText("Inicializovano\n")
    
def stop_clicked():
    data = struct.pack('<BBc', 0x80, 0,  "B") 
    lorris.send(data)
