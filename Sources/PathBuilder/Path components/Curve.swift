import SwiftUI

/// Adds a cubic Bézier curve to the path, with the specified end point and control points.
public struct Curve: PathComponent {
    private let point, control1, control2: CGPoint

    /// Initializes path component, which adds a cubic Bézier curve to the path, with the specified end point and control points.
    /// - Parameter point: The point, in user space coordinates, at which to end the curve.
    /// - Parameter control1: The first control point of the curve, in user space coordinates.
    /// - Parameter control2: The second control point of the curve, in user space coordinates.
    public init(to point: CGPoint, control1: CGPoint, control2: CGPoint) {
        self.point = point
        self.control1 = control1
        self.control2 = control2
    }

    public func add(to path: inout Path) {
        path.addCurve(to: point, control1: control1, control2: control2)
    }
}
