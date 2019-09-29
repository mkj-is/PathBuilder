import SwiftUI

public struct Curve: PathComponent {
    private let point, control1, control2: CGPoint

    public init(to point: CGPoint, control1: CGPoint, control2: CGPoint) {
        self.point = point
        self.control1 = control1
        self.control2 = control2
    }

    public func add(to path: inout Path) {
        path.addCurve(to: point, control1: control1, control2: control2)
    }

    public func add(to cgPath: CGMutablePath) {
        cgPath.addCurve(to: point, control1: control1, control2: control2)
    }
}
