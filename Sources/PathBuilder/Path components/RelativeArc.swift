import SwiftUI

public struct RelativeArc: PathComponent {
    private let center: CGPoint
    private let radius: CGFloat
    private let startAngle, delta: Angle

    public init(center: CGPoint, radius: CGFloat, startAngle: Angle, delta: Angle) {
        self.center = center
        self.radius = radius
        self.startAngle = startAngle
        self.delta = delta
    }

    public func add(to path: inout Path) {
        path.addRelativeArc(center: center, radius: radius, startAngle: startAngle, delta: delta)
    }

    public func add(to cgPath: CGMutablePath) {
        cgPath.addRelativeArc(center: center, radius: radius, startAngle: CGFloat(startAngle.radians), delta: CGFloat(delta.radians))
    }
}
