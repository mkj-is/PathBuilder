import SwiftUI

/// Adds a quadratic Bézier curve to the path, with the specified end point and control point.
public struct QuadCurve: PathComponent {
    private let point, control: CGPoint

    /// Initializes path component, which adds a quadratic Bézier curve to the path, with the specified end point and control point.
    /// - Parameter point: The point, in user space coordinates, at which to end the curve.
    /// - Parameter control: The control point of the curve, in user space coordinates.
    public init(to point: CGPoint, control: CGPoint) {
        self.point = point
        self.control = control
    }

    public func add(to path: inout Path) {
        path.addQuadCurve(to: point, control: control)
    }
}
