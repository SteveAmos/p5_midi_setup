/* Use file to test midi controller- Button test
Switch case will change background colors with press of button
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

color curMidiColor = 0;

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
  switch(curMidiColor){
    case 9 : background(#FFFF00); break;
    case 10 : background(#FF00FF); break;
    case 11 : background(#00FFFF); break;
    case 12 : background(#FF3300); break;
    default : background(bgColor); break;
  } 
}

//****************************************************************************

void noteOn(int channel, int pitch, int velocity) {
  println("noteOn", channel, pitch, velocity);
  curMidiColor = pitch;
}

//****************************************************************************
