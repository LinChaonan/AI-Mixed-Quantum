//
//  QuantumUITests.swift
//  QuantumUITests
//
//  Created by Chaonan Lin on 05/07/2022.
//

import XCTest

class QuantumUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false

        app.activate()
        app.launch()
    }


    func testDebug() throws {
        print(app.debugDescription)
    }
    
    
    func testIBMQ() throws {
        app.launch()
        let tabBar = XCUIApplication().tabBars["Tab Bar"]
        tabBar.buttons["IBM Q, IBM Q"].tap()
        tabBar.buttons["Home, Home"].tap()
    }
    
    func testModel() throws {
        app.swipeLeft()
        app.scrollViews.otherElements.scrollViews.otherElements.buttons["Model"].tap()
    }
    
    func testPartI() throws {
        app.swipeLeft()
        app.scrollViews.otherElements.scrollViews.otherElements.buttons["Part I"].tap()
    }
    
    func testPartII() throws {
        app.swipeLeft()
        app.scrollViews.otherElements.scrollViews.otherElements.buttons["Part II"].tap()
    }
    
    func testPartIII() throws {
        app.swipeLeft()
        app.scrollViews.otherElements.scrollViews.otherElements.buttons["Part III"].tap()
    }
    
    func testTest() throws {
        
    }
        

    func testLaunchPerformance() throws
            {measure(metrics: [XCTApplicationLaunchMetric()]) {
                app.launch()
            }
        }



    func testWatsonPagePerformance() throws
            {measure(metrics: [
                XCTClockMetric(),
                XCTCPUMetric(),
                XCTStorageMetric(),
                XCTMemoryMetric()]
            ) {
                app.scrollViews.otherElements.scrollViews.otherElements.buttons["Watson"].tap()

                let webViewsQuery = app.webViews.webViews.webViews
                XCTAssert(webViewsQuery/*@START_MENU_TOKEN@*/.buttons["Open the chat window"]/*[[".otherElements[\"IBM Watson Page\"]",".otherElements[\"Chat region, region\"].buttons[\"Open the chat window\"]",".buttons[\"Open the chat window\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.waitForExistence(timeout: 5))
                webViewsQuery/*@START_MENU_TOKEN@*/.buttons["Open the chat window"]/*[[".otherElements[\"IBM Watson Page\"]",".otherElements[\"Chat region, region\"].buttons[\"Open the chat window\"]",".buttons[\"Open the chat window\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
                webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["Chat window"]/*[[".otherElements[\"IBM Watson Page\"].otherElements[\"Chat window\"]",".otherElements[\"Chat window\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.children(matching: .other).element(boundBy: 0).children(matching: .button).matching(identifier: "Close the chat window").element(boundBy: 0).tap()
                app.buttons["Close"].tap()
            }
        }
    
}
