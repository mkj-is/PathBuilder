import SwiftUI

public struct Move: PathComponent {
    private let point: CGPoint

    public init(to point: CGPoint) {
        self.point = point
    }

    public func add(to path: inout Path) {
        path.move(to: point)
    }

    public func add(to cgPath: CGMutablePath) {
        cgPath.move(to: point)
    }
}
