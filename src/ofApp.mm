#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    ofBackground(0, 0, 0);
    ofEnableAlphaBlending();//透過度初期設定
    i=0;
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    //cam.begin();
    for(int n = 1; n<=i; n=n+1){
        ofSetColor(0,0,250);//色を決定
        ofRect(touchLoc[n].x, touchLoc[n].y, 100, 100);//四角形を描画
}//cam.end();
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
    i++;
    touchLoc[i].set(touch.x, touch.y);//タッチした場所の位置を取得
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
