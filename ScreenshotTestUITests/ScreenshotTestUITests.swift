//
//  ScreenshotTestUITests.swift
//  ScreenshotTestUITests
//
//  Created by Markus Faßbender on 17.06.19.
//  Copyright © 2019 Markus Faßbender. All rights reserved.
//

import XCTest

class ScreenshotTestUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false

        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSnapshot() {
        snapshot("01Screen")
    }

}
