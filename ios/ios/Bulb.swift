//
//  Bulb.swift
//  iosReact
//
//  Created by اسرارالحق  on 22/11/2020.
//

import Foundation
//
//protocol BulbDelegate {
//    func bulbStateDidChanged(state: Bool)
//}

@objc(Bulb)
class Bulb: NSObject {
    
//    var delegate: BulbDelegate?
    
    @objc
    static var isOn = false
    
    @objc
    func turnOn() {
        Bulb.isOn = true
        print("Bulb is now ON in Swift")
    }
    
    @objc
    func turnOff() {
        Bulb.isOn = false
        print("Bulb is now OFF in Swift")
        
    }
    
    @objc
    func getStatus(_ callback: RCTResponseSenderBlock) {
        callback([NSNull(), Bulb.isOn])
//        delegate?.bulbStateDidChanged(state: Bulb.isOn)
    }
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
}
