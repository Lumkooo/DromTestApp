//
//  ImagesURLManagerTest.swift
//  DromTestAppTests
//
//  Created by Андрей Шамин on 3/8/21.
//

import Foundation

import XCTest
@testable import DromTestApp

class ImagesURLManagerTest: XCTestCase {

    var imagesURLManager: ImagesURLManager!

    override func setUp() {
        super.setUp()
        self.imagesURLManager = ImagesURLManager()
    }

    override func tearDown() {
        self.imagesURLManager = nil
        super.tearDown()
    }

    func testImagesURLManager() throws {
        let emptyStringArray: [String] = []
        self.imagesURLManager!.getImagesStringURL { (imagesStringURL) in
            XCTAssertNotEqual(imagesStringURL,
                              emptyStringArray,
                              "Error. Array's are not the same!")
        }
    }
}
