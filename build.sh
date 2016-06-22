#!/bin/bash
pod install

cp patchs/RTCTypes.h Pods/libjingle_peerconnection/libjingle_peerconnection/Headers/RTCTypes.h
cp patchs/RTCPeerConnection.h Pods/libjingle_peerconnection/libjingle_peerconnection/Headers/RTCPeerConnection.h
cp patchs/RTCSessionDescription.h Pods/libjingle_peerconnection/libjingle_peerconnection/Headers/RTCSessionDescription.h

xcodebuild -workspace Kurento-iOS.xcworkspace -scheme KurentoToolbox -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO
