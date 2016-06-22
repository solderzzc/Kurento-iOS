#!/bin/bash
pod install

cp -rf patchs/RTCTypes.h Pods/libjingle_peerconnection/libjingle_peerconnection/Headers/RTCTypes.h
cp -rf patchs/RTCPeerConnection.h Pods/libjingle_peerconnection/libjingle_peerconnection/Headers/RTCPeerConnection.h
cp -rf patchs/RTCSessionDescription.h Pods/libjingle_peerconnection/libjingle_peerconnection/Headers/RTCSessionDescription.h
cp -rf patchs/KurentoToolbox.h Pods/Headers/Private/KurentoToolbox/KurentoToolbox.h

xcodebuild -workspace Kurento-iOS.xcworkspace -scheme KurentoToolbox -sdk iphonesimulator ONLY_ACTIVE_ARCH=NO
