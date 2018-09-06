//
//  warmachineUITests.swift
//  warmachineUITests
//
//  Created by Peter Chan on 8/31/18.
//  Copyright © 2018 learner. All rights reserved.
//

import XCTest

class warmachineUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        let app = XCUIApplication()

        app.launchArguments = [ Defines.FOR_TESTING ]

        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBattle1() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let dealbuttonButton = app.buttons["dealbutton"]
        dealbuttonButton.tap()

        XCTAssertTrue(app.images["card3"].exists && app.images["card3"].identifier == Defines.LEFT_IMAGE_VIEW)
        XCTAssertTrue(app.images["card9"].exists && app.images["card9"].identifier == Defines.RIGHT_IMAGE_VIEW)

    }
    
}
