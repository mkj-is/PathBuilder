import XCTest
import PathBuilder
import SwiftUI

final class PathBuilderTests: XCTestCase {

    func testAllComponents() {
        let path = Path {
            Arc(center: .zero, radius: .zero, startAngle: .zero, endAngle: .zero, clockwise: true)
            Close()
            Ellipse(in: .zero)
            Move(to: .zero)
            Line(.zero)
            QuadCurve(to: .zero, control: .zero)
            Rect(.zero)
            RelativeArc(center: .zero, radius: .zero, startAngle: .zero, delta: .zero)
            RoundedRect(in: .zero, cornerSize: .zero)
            Subpath(path: CGMutablePath())
            TangentArc(end1: .zero, end2: .zero, radius: .zero)
        }
        XCTAssertEqual(path.boundingRect, .zero)
    }

    func testSubpaths() {
        let path = Path {
            Subpath {
                Move(to: CGPoint(x: 100, y: 100))
                Line(.zero)
            }
            Subpath {
                Move(to: CGPoint(x: 100, y: 0))
                Line(CGPoint(x: 0, y: 100))
            }
            Subpath {
                Move(to: CGPoint(x: 0, y: 100))
                Line(CGPoint(x: 100, y: 0))
            }
        }
        XCTAssertEqual(CGRect(origin: .zero, size: CGSize(width: 100, height: 100)), path.boundingRect)
    }

    static var allTests = [
        ("testAllComponents", testAllComponents),
        ("testSubpaths", testSubpaths),
    ]
}
