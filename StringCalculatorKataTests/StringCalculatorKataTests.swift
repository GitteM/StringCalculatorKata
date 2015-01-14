//
//  StringCalculatorKataTests.swift
//  StringCalculatorKataTests
//
//  Created by Brigitte Michau on 2015/01/14.
//  Copyright (c) 2015 Fontera. All rights reserved.
//

import UIKit
import XCTest

class StringCalculatorKataTests: XCTestCase {
    
    let stringCalculator = StringCalculator()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddEmptyStringReturnZero () {
        XCTAssertEqual(stringCalculator.add(""), 0, "Empty string does not return 0")
    }
    
    func testAddZeroReturnZero() {
        XCTAssertEqual(stringCalculator.add("0"), 0, "Expected result is 0")
    }
    
    func testAddNumberOneReturnSumOne () {
        XCTAssertEqual(stringCalculator.add("1"), 1, "Expected result is 1")
    }
    
    func testAddTwoNumbersReturnSum() {
        XCTAssertEqual(stringCalculator.add("1,2"), 3, "Excpected result is 3")
    }
    
    
}
