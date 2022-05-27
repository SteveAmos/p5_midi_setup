/* Setup file for using midi controllers with Processing
Use file to map channels, buttons and knobs of connected midi devices

 Author: Steve Amos
 Created: May 27, 2022 | Updated:
 
 Based on code examples shared by Joshua Davis via Discord/ Patreon
 */


//****************************************************************************
int stageWidth = 900;
int stageHeight = 900;
color bgColor = #101010;

//****************************************************************************
import themidibus.*;
MidiBus myBus;

//buttons
//channel 0 -16 / a group of notes
//note 0 -127 / individual notes
//velocity 0 -127 / speed at which note is pressed

//knobs
//channel 0-16 / a group of knobs
//number 0-127 / individual knobs
//value 0-127 / value of knob being turned

//****************************************************************************

void settings() {
  size(stageWidth, stageHeight);
}

void setup() {

    
    MidiBus.list();
    //                  (parent, In, Out)
    myBus = new MidiBus(this, 1, 2);
}

void draw() {
  background(bgColor);
}

//****************************************************************************

void noteOn(int channel, int pitch, int velocity) {
  println("noteOn", channel, pitch, velocity);
}

//void noteOff(int channel, int pitch, int velocity){
//  println("noteOff", channel, pitch, velocity);
//}

void controllerChange(ControlChange change){
  println("controllerChange", change.channel(), change.number(), change.value());

}
//****************************************************************************
