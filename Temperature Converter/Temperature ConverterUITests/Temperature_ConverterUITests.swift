//
//  Temperature_ConverterUITests.swift
//  Temperature ConverterUITests
//
//  Created by Kristina Feller on 4/3/18.
//  Copyright © 2018 Example. All rights reserved.
//

import XCTest

class Temperature_ConverterUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func temperature_converter_test() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let celsius = app.pickers["CelsiusPicker"]
        celsius.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "-49 °C")
        XCTAssert(app.staticTexts["-56.20 °F"].exists)
        
        //Switch Celsius to Fahrenhite.
        let swichButton1 = app.buttons["SwitchUnit1"]
        swichButton1.tap()
        XCTAssert(app.images["fahrenhite"].exists)
        
        let fahrenhit = app.pickers["FahrenheitPicker"]
        fahrenhit.pickerWheels.element(boundBy: 0).adjust(toPickerWheelValue: "32 °F")
        XCTAssert(app.staticTexts["0.00 °C"].exists)
        
    }

    
    
}
