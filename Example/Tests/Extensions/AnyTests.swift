//
//  AnyTests.swift
//  Ramda
//
//  Created by Justin Guedes on 2016/09/10.
//  Copyright (c) 2016 CocoaPods. All rights reserved.
//

import XCTest
import Fox
import Ramda

class AnyTests: XCTestCase {

    func isEven(number: Int) -> Bool {
        return number % 2 == 0
    }

    func testShouldReturnTrueIfAnyValueInListMatchesPredicate() {
        let values = [1, 3, 5, 6, 7]

        let result = R.any(self.isEven, in: values)

        XCTAssertTrue(result)
    }

    func testShouldReturnFalseIsNoValueInListMatchesPredicate() {
        let values = [1, 3, 5, 7, 9]

        let result = R.any(self.isEven, in: values)

        XCTAssertFalse(result)
    }

    func testShouldReturnTrueIfAnyValueInListMatchesPredicateUsingPartialFunctions() {
        let values = [1, 3, 5, 6, 7]

        let any = R.any(self.isEven)
        let result = any(in: values)

        XCTAssertTrue(result)
    }

}
