import SwiftUI

public struct Line: PathComponent {
    private let point: CGPoint

    public init(to point: CGPoint) {
        self.point = point
    }

    public func add(to path: inout Path) {
        path.addLine(to: point)
    }
}
