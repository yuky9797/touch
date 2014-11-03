#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    ofBackground(0, 0, 0);
    ofTranslate(ofGetWidth(), ofGetHeight());
    ofEnableAlphaBlending();//透過度初期設定
    i=0;
    boxsize = 0;
    //初期設定
    bgm1.loadSound("button84.mp3");
    bgm1.setLoop(false);
    bgm1.loadSound("button83.mp3");
    bgm1.setLoop(false);

}

//--------------------------------------------------------------
void ofApp::update(){
    if(boxsize<=400){
    boxsize=boxsize+1;
    }else if(boxsize>400){
        boxsize=0;
    }
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(200,0,0);//色を決定
    box1.set(300);//大きさを指定
    box1.setPosition(0, 0, 0);//位置を指定
    box1.drawWireframe();//描画
    ofSetColor(0,0,200);//色を決定
    box2.set(boxsize);//大きさを指定
    box2.setPosition(0, 0, 0);//位置を指定
    box2.drawWireframe();//描画
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
        if(boxsize==300){
            bgm1.play();
        }else if(boxsize>250 && boxsize<350)
        {
            bgm2.play();
        }
}
//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){
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
