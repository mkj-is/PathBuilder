import SwiftUI

public struct Line: PathComponent {
    private let points: [CGPoint]

    public init(_ points: CGPoint...) {
        self.points = points
    }

    public func add(to path: inout Path) {
        path.addLines(points)
    }

    public func add(to cgPath: CGMutablePath) {
        cgPath.addLines(between: points)
    }
}
