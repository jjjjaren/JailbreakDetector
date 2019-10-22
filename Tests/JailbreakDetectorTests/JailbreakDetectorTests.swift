//
//  JailbreakDetectorTests.swift
//  JailbreakDetectorTests
//
//  Created by Jaren Hamblin on 10/22/19.
//  Copyright © 2019 HamblinSoft. All rights reserved.
//

import XCTest
@testable import JailbreakDetector

class JailbreakDetectorTests: XCTestCase {

    #if os(iOS)
    func testJailbreakDetection() {
        XCTAssertFalse(JailbreakDetector.isDeviceJailBroken())
    }

    func testJailbreakDetectionPerformance() {
        self.measure {
            _ = JailbreakDetector.isDeviceJailBroken()
        }
    }
    #endif
}
