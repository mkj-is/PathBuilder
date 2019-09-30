import SwiftUI

/// Adds an arc of a circle to the path, specified with a radius and two tangent lines.
public struct TangentArc: PathComponent {

    private let end1, end2: CGPoint
    private let radius: CGFloat

    /// Initializes path component, which adds an arc of a circle to the path, specified with a radius and two tangent lines.
    /// - Parameter end1: The end point, in user space coordinates, for the first tangent line to be used in constructing the arc. (The start point for this tangent line is the path's current point.)
    /// - Parameter end2: The end point, in user space coordinates, for the second tangent line to be used in constructing the arc. (The start point for this tangent line is the tangent1End point.)
    /// - Parameter radius: The radius of the arc, in user space coordinates.
    public init(end1: CGPoint, end2: CGPoint, radius: CGFloat) {
        self.end1 = end1
        self.end2 = end2
        self.radius = radius
    }

    public func add(to path: inout Path) {
        path.addArc(tangent1End: end1, tangent2End: end2, radius: radius)
    }
}
