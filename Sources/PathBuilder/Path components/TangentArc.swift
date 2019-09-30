import SwiftUI

/// Adds an arc of a circle to the path, specified with a radius and two tangent lines.
public struct TangentArc: PathComponent {

    private let end1, end2: CGPoint
    private let radius: CGFloat

    public init(end1: CGPoint, end2: CGPoint, radius: CGFloat) {
        self.end1 = end1
        self.end2 = end2
        self.radius = radius
    }

    public func add(to path: inout Path) {
        path.addArc(tangent1End: end1, tangent2End: end2, radius: radius)
    }
}
