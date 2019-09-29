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

    func testSingleComponentPath() {
        let path = Path {
            Move(to: .zero)
        }
        XCTAssertEqual(path.boundingRect, .zero)
    }

    func testIfPath() {
        let draw = true
        let path = Path {
            Move(to: .zero)
            if draw {
                Line(CGPoint(x: 100, y: 100))
            } else {
                Line(CGPoint(x: 50, y: 50))
            }
        }
        XCTAssertEqual(path.boundingRect, CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    }

    func testElsePath() {
        let draw = false
        let path = Path {
            Move(to: .zero)
            if draw {
                Line(CGPoint(x: 100, y: 100))
            } else {
                Line(CGPoint(x: 50, y: 50))
            }
        }
        XCTAssertEqual(path.boundingRect, CGRect(origin: .zero, size: CGSize(width: 50, height: 50)))
    }
}
