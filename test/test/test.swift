//
//  test.swift
//  test
//
//  Created by rubl333 on 2015/11/4.
//  Copyright (c) 2015年 appcoda. All rights reserved.
//

import UIKit

public enum DeviceTypes : String {
    case simulator      = "Simulator or Sandbox",
    
    iPhone4        = "iPhone 4",
    iPhone4S       = "iPhone 4S",
    iPhone5        = "iPhone 5",
    iPhone5S       = "iPhone 5S",
    iPhone5c       = "iPhone 5c",
    iPhone6        = "iPhone 6",
    iPhone6plus    = "iPhone 6 Plus",
    iPhone6S       = "iPhone 6S",
    iPhone6Splus   = "iPhone 6S Plus",
    unrecognized   = "?unrecognized?"
}

public extension UIDevice {
    public var deviceType: DeviceTypes {
        var systemInfo = utsname()
        uname(&systemInfo)
        let modelCode = withUnsafeMutablePointer(&systemInfo.machine) {
            ptr in String.fromCString(UnsafePointer<CChar>(ptr))
        }
        var modelMap : [ String : DeviceTypes ] = [
            "i386"      : .simulator,      // Simulator or Sandbox
            "x86_64"    : .simulator,      // Simulator or Sandbox
            
            "iPhone3,1" : .iPhone4,        // model A1332
            "iPhone3,2" : .iPhone4,        // limited/unconfirmed 8Gb
            "iPhone3,3" : .iPhone4,        // model A1349, GSM/CDMA
            "iPhone4,1" : .iPhone4S,       // model A1385, A1431 China
            "iPhone5,1" : .iPhone5,        // model A1428, AT&T/Canada
            "iPhone5,2" : .iPhone5,        // model A1429, everything else
            "iPhone5,3" : .iPhone5,        // model A1532 GSM N.Amer, China Telcom and Verizon
            "iPhone5,4" : .iPhone5,        // model A1507 UK, Europe, NE, A1529 Asia Pacific, A1516 China, A1526 China
            
            "iPhone5,3" : .iPhone5c,       // model A1456, A1532 | GSM)
            "iPhone5,4" : .iPhone5c,       // model A1507, A1516, A1526 (China), A1529 | Global)
            "iPhone6,1" : .iPhone5S,       // model A1433, A1533 | GSM)
            "iPhone6,2" : .iPhone5S,       // model A1457, A1518, A1528 (China), A1530 | Global)
            "iPhone7,1" : .iPhone6plus,    // All iPhone 6 Plus's
            "iPhone7,2" : .iPhone6,        // All iPhone 6's
            "iPhone8,1" : .iPhone6S,       // All iPhone 6S's
            "iPhone8,2" : .iPhone6Splus,   // All iPhone 6S Plus's
        ]
        if let model = modelMap[String.fromCString(modelCode!)!] {
            return model
        }
        println(DeviceTypes.unrecognized)
        println(__FUNCTION__)
        return DeviceTypes.unrecognized
        
}
}