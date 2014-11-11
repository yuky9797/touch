#include "ofApp.h"
#define NUM 5000

float x[NUM];
float y[NUM];
float z[NUM];
float light[NUM];
int i;
float speed;

//間隔
float spacing = 200;
//座標の位置情報
float xx,yy,zz;
//移動速度
float movementSpeed = 0.05;

int ii;


//--------------------------------------------------------------
void ofApp::setup(){	
    ofBackground(0, 0, 0);
    ofEnableAlphaBlending();//透過度初期設定
    i=0;
    boxsize = 0;
    //初期設定
    bgm1.loadSound("button84.mp3");
    bgm1.setLoop(false);
    bgm2.loadSound("button83.mp3");
    bgm2.setLoop(false);

}

//--------------------------------------------------------------
void ofApp::update(){
    if(boxsize<=300){
    boxsize=boxsize+1;
    }else if(boxsize>300){
        boxsize=0;
    }
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(200,0,0);//色を決定
    ofTranslate(ofGetWidth()/2, ofGetHeight()/2);
    box1.set(200);//大きさを指定
    box1.setPosition(0, 0, 0);//位置を指定
    box1.drawWireframe();//描画
    ofSetColor(0,0,200);//色を決定
    box2.set(boxsize);//大きさを指定
    box2.setPosition(0, 0, 0);//位置を指定
    box2.drawWireframe();//描画
    
    
    for(i = 0; i < NUM; i++){
        
        
        ofTranslate(x[i],y[i],z[i]);
        ofSetColor(ofRandom(255), ofRandom(255),ofRandom(255),light[i]);
        ofDrawSphere(30);
        ofTranslate(-x[i], -y[i],-z[i]);
        
    }
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
        if(boxsize>=195 && boxsize<=205){
            bgm1.play();
        }else if(boxsize>150 && boxsize<250)
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
