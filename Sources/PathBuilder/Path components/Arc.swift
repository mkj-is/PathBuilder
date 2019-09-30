import SwiftUI

/// Adds an arc of a circle to the path, specified with a radius and angles.
public struct Arc: PathComponent {

    private let center: CGPoint
    private let radius: CGFloat
    private let startAngle, endAngle: Angle
    private let clockwise: Bool

    /// Initializes path component, which adds an arc of a circle to the path, specified with a radius and angles.
    /// - Parameter center: The center of the arc, in user space coordinates.
    /// - Parameter radius: The radius of the arc, in user space coordinates.
    /// - Parameter startAngle: The angle to the starting point of the arc from the positive x-axis.
    /// - Parameter endAngle: The angle to the end point of the arc from the positive x-axis.
    /// - Parameter clockwise: `true` to make a clockwise arc; `false` to make a counterclockwise arc.
    public init(center: CGPoint, radius: CGFloat, startAngle: Angle, endAngle: Angle, clockwise: Bool = true) {
        self.center = center
        self.radius = radius
        self.startAngle = startAngle
        self.endAngle = endAngle
        self.clockwise = clockwise
    }

    public func add(to path: inout Path) {
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
    }
}
