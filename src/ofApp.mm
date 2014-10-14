#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
    ofBackground(0, 0, 0);
    ofEnableAlphaBlending();//透過度初期設定
    i=0;
    for (int m = 0; m<=10000; m++) {
    boxsize[m] = 0;
    }//初期設定

}

//--------------------------------------------------------------
void ofApp::update(){
    for(int n = 1; n<=i; n=n+1){
        boxsize[n] = boxsize[n]+1;
        if (boxsize[n] >= 100) {
            boxsize[n] =0;
        }//立方体のサイズ変更
    }
}

//--------------------------------------------------------------
void ofApp::draw(){
    //cam.begin();
    for(int n = 1; n<=i; n=n+1){
        ofSetColor(0,0,250);//色を決定
        box[n].set(boxsize[n]);//大きさを指定
        box[n].setPosition(touchLoc[n].x, touchLoc[n].y, 0);//位置を指定
        box[n].drawWireframe();//描画
    }
    //cam.end();
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
