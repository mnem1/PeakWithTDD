//
//  PeakWithTddTests.swift
//  PeakWithTddTests
//
//  Created by mnem on 11/20/20.
//

import XCTest
@testable import PeakWithTdd

class PeakWithTddTests: XCTestCase {
    func testReturnExpectedValue() {
        let expectedValue = 14
        let array = [1,4,8,14,10,2,0]
        let result = Peak().findPeak(in: array)
        XCTAssertEqual(result, expectedValue)
    }
    func testReturnNilWhenArrayIsEmmpty() {
        let array = [Int]()
        let result = Peak().findPeak(in: array)
        XCTAssertNil(result)
    }
    func testReturnNilWhenNumberOfElementsIsLessThree(){
        let array = [1,2]
        let result = Peak().findPeak(in: array)
        XCTAssertNil(result)
    }
}

