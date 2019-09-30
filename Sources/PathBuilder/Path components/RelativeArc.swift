import SwiftUI

/// Adds an arc of a circle to the path, specified with a radius and a difference in angle.
public struct RelativeArc: PathComponent {
    private let center: CGPoint
    private let radius: CGFloat
    private let startAngle, delta: Angle

    /// Initializes path component, which adds an arc of a circle to the path, specified with a radius and a difference in angle.
    /// - Parameter center: The center of the arc, in user space coordinates.
    /// - Parameter radius: The radius of the arc, in user space coordinates.
    /// - Parameter startAngle: The angle to the starting point of the arc, measured from the positive x-axis.
    /// - Parameter delta: The difference between the starting angle and ending angle of the arc. A positive value creates a counter-clockwise arc (in user space coordinates), and vice versa.
    public init(center: CGPoint, radius: CGFloat, startAngle: Angle, delta: Angle) {
        self.center = center
        self.radius = radius
        self.startAngle = startAngle
        self.delta = delta
    }

    public func add(to path: inout Path) {
        path.addRelativeArc(center: center, radius: radius, startAngle: startAngle, delta: delta)
    }
}
