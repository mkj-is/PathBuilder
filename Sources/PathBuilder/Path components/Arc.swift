import SwiftUI

public struct Arc: PathComponent {

    private let center: CGPoint
    private let radius: CGFloat
    private let startAngle, endAngle: Angle
    private let clockwise: Bool

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

    public func add(to cgPath: CGMutablePath) {
        cgPath.addArc(center: center, radius: radius, startAngle: CGFloat(startAngle.radians), endAngle: CGFloat(endAngle.radians), clockwise: clockwise)
    }
}
