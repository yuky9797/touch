#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    ofBackground(0, 0, 0);
    ofEnableAlphaBlending();
    //touchLoc[0].x = -1000;
    //touchLoc[0].y = -1000;
     ofTranslate(ofGetWidth()/2, ofGetHeight()/2,0);
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    //cam.begin();
             ofTranslate(0,0,0);
	ofSetColor(200, 0, 0);
         ofRect(touchLoc.x, touchLoc.y, 100, 100);
         ofTranslate(0, 0,0);

    //cam.end();
//描画
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

    touchLoc.set(touch.x, touch.y);
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

    touchLoc.set(touch.x, touch.y);
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

    touchLoc.set(-1000, -1000);
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
