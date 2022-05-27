Setup files for connecting midi controllers to Processing. Based on code examples shared by Joshua Davis on Discord and Patreon. 

These files are for mapping the input and outputs of available midi devices. 

MidiBus.list(); prints to console a list of devices and their input and output channels.

MidiBus List Example: 

Available MIDI Devices:
----------Input----------
[0] "Real Time Sequencer"
[1] "Launch Control"
----------Output----------
[0] "Gervill"
[1] "Real Time Sequencer"
[2] "Launch Control"

To interface with controller then assign the ins and outs to a new variable in order to connect and interface with a specific device. The arguments are (parent, In, Out)

New MidiBus Example: 
myBus =  newMidiBus(this, 1, 2); 

