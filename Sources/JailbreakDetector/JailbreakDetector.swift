//
//  JailbreakDetector.swift
//  JailbreakDetector
//
//  Created by Jaren Hamblin on 10/22/19.
//  Copyright © 2019 HamblinSoft. All rights reserved.
//

///
public class JailbreakDetector {

    private init() {}
}

#if os(iOS)
import UIKit
///
extension JailbreakDetector {

    ///
    public static func isDeviceJailBroken() -> Bool {
        if TARGET_IPHONE_SIMULATOR != 1 {
            // Check 1 : existence of files that are common for jailbroken devices
            if FileManager.default.fileExists(atPath: "/Applications/Cydia.app")
                || FileManager.default.fileExists(atPath: "/Applications/Sileo.app")
                || FileManager.default.fileExists(atPath: "/Library/MobileSubstrate/MobileSubstrate.dylib")
                || FileManager.default.fileExists(atPath: "/bin/bash")
                || FileManager.default.fileExists(atPath: "/usr/sbin/sshd")
                || FileManager.default.fileExists(atPath: "/etc/apt")
                || FileManager.default.fileExists(atPath: "/private/var/lib/apt/")
                || UIApplication.shared.canOpenURL(URL(string:"cydia://package/com.example.package")!)
                    {
                    return true
            }
            // Check 2 : Reading and writing in system directories (sandbox violation)
            let stringToWrite = "Jailbreak Test"
            do {
                try stringToWrite.write(toFile:"/private/JailbreakTest.txt", atomically:true, encoding: .utf8)
                return true //Device is jailbroken
            } catch {
                return false
            }
        } else {
            return false
        }
    }
}
#endif
