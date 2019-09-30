import SwiftUI

/// Adds a quadratic Bézier curve to the path, with the specified end point and control point.
public struct QuadCurve: PathComponent {
    private let point, control: CGPoint

    public init(to point: CGPoint, control: CGPoint) {
        self.point = point
        self.control = control
    }

    public func add(to path: inout Path) {
        path.addQuadCurve(to: point, control: control)
    }
}
