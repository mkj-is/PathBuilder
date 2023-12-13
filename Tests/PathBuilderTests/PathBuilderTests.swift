import XCTest
import PathBuilder
import SwiftUI

final class PathBuilderTests: XCTestCase {

    func testAllComponents() {
        let path = Path {
            Arc(center: .zero, radius: .zero, startAngle: .zero, endAngle: .zero, clockwise: true)
            Close()
            Curve(to: .zero, control1: .zero, control2: .zero)
            Oval(in: .zero)
            Move(to: .zero)
            Line(to: .zero)
            Lines(between: [.zero, .zero])
            QuadCurve(to: .zero, control: .zero)
            Rect(.zero)
            RelativeArc(center: .zero, radius: .zero, startAngle: .zero, delta: .zero)
            RoundedRect(in: .zero, cornerSize: .zero)
            Subpath(path: Path())
            TangentArc(end1: .zero, end2: .zero, radius: .zero)
            EmptySubpath()
        }
        XCTAssertEqual(path.boundingRect, .zero)
    }

    func testSubpaths() {
        let path = Path {
            Subpath {
                Move(to: CGPoint(x: 100, y: 100))
                Line(to: .zero)
            }
            Subpath {
                Move(to: CGPoint(x: 100, y: 0))
                Line(to: CGPoint(x: 0, y: 100))
            }
            Subpath {
                Move(to: CGPoint(x: 0, y: 100))
                Line(to: CGPoint(x: 100, y: 0))
            }
        }
        XCTAssertEqual(CGRect(origin: .zero, size: CGSize(width: 100, height: 100)), path.boundingRect)
    }

    func testLoop() {
        let path = Path {
            Loop(sequence: 0...100) { i in
                Move(to: .zero)
                Line(to: CGPoint(x: sin(CGFloat(i)) * 100, y: cos(CGFloat(i)) * 100))
            }
        }
        XCTAssertNotEqual(path.boundingRect, .zero)
    }
    
    func testEllipse() {
        let ellipseSize = CGSize(width: 10, height: 20)
        let ellipseRect = CGRect(origin: .zero, size: ellipseSize)
        let transform = CGAffineTransform(scaleX: 2, y: 1)
        let ellipsePath = Path {
            Ellipse(in: ellipseRect, transform: transform)
        }
        
        let circleSize = CGSize(width: 20, height: 20)
        let circleRect = CGRect(origin: .zero, size: circleSize)
        let circlePath = Path {
            Oval(in: circleRect)
        }
        XCTAssertEqual(ellipsePath.boundingRect, circlePath.boundingRect)
    }

    func testSingleComponentPath() {
        let path = Path {
            Move(to: .zero)
        }
        XCTAssertEqual(path.boundingRect.size, .zero)
    }

    func testIfPath() {
        let draw = true
        let path = Path {
            if draw {
                Rect(CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
            }
        }
        XCTAssertEqual(path.boundingRect, CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    }

    func testIfNotPath() {
        let draw = false
        let path = Path {
            Move(to: .zero)
            if draw {
                Line(to: CGPoint(x: 100, y: 100))
            }
            Close()
        }
        XCTAssertEqual(path.boundingRect, .zero)
    }

    func testEitherPath() {
        let draw = true
        let path = Path {
            if draw {
                Rect(CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
            } else {
                Rect(CGRect(origin: .zero, size: CGSize(width: 50, height: 50)))
            }
        }
        XCTAssertEqual(path.boundingRect, CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    }

    func testElsePath() {
        let draw = false
        let path = Path {
            if draw {
                Rect(CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
            } else {
                Rect(CGRect(origin: .zero, size: CGSize(width: 50, height: 50)))
            }
        }
        XCTAssertEqual(path.boundingRect, CGRect(origin: .zero, size: CGSize(width: 50, height: 50)))
    }
}
