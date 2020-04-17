import Foundation
import XCTest
import Ramda

class SplitTests: XCTestCase {

    func testSplit() {
        let result = R.split("/", "/usr/local/bin/node")
        XCTAssertEqual(result, ["usr", "local", "bin", "node"])
    }

    func testSplitRegex() {
        let result = R.split("\\w*\\S", "This will be split")
        XCTAssertEqual(result, ["This", "will", "be", "split"])
    }

}
