import XCTest
import PathBuilder
import SwiftUI

final class PathBuilderTests: XCTestCase {
    func testArray() {
        let path = Path {
            Move(to: CGPoint(x: 100, y: 100))
            Line(CGPoint(x: 200, y: 200))
        }
        XCTAssertEqual(CGRect(x: 100, y: 100, width: 100, height: 100), path.boundingRect)
    }

    static var allTests = [
        ("testExample", testArray),
    ]
}
