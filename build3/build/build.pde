/* Use file to test midi controller- Knob test
Turn knobs to adjust red, green and blue color channels

 Author: Steve Amos
 Created: May 27, 2022 | Updated:
 
 Based on code examples shared by Joshua Davis via Discord/ Patreon */

//****************************************************************************
int stageWidth = 900;
int stageHeight = 900;
color bgColor = #101010;

//****************************************************************************
import themidibus.*;
MidiBus myBus;

color curMidiRed = 0;
color curMidiGreen = 0;
color curMidiBlue = 0;

//****************************************************************************

void settings() {
  size(stageWidth, stageHeight);
}

void setup() {
   // Mapped to Novation Launch Control Mini
    MidiBus.list();
    myBus = new MidiBus(this, 1, 2);
}

void draw() {

  background(curMidiRed, curMidiGreen, curMidiBlue);
  
}

//****************************************************************************

// void noteOn(int channel, int pitch, int velocity) {
//   println("noteOn", channel, pitch, velocity);
//   curMidiColor = pitch;
// }

void controllerChange(ControlChange change){
  println("controllerChange", change.channel(), change.number(), change.value());

  switch (change.number()){
    case 21 : curMidiRed = (int)map(change.value(), 0, 127, 0, 255); break;
    case 22 : curMidiGreen = (int)map(change.value(), 0, 127, 0, 255); break;
    case 23 : curMidiBlue = (int)map(change.value(), 0, 127, 0, 255); break;
  }
}

//****************************************************************************
