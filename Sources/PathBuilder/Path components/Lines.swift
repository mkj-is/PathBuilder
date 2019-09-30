import SwiftUI

/// Adds a sequence of connected straight-line segments to the path.
public struct Lines: PathComponent {
    private let points: [CGPoint]

    public init(between points: [CGPoint]) {
        self.points = points
    }

    public func add(to path: inout Path) {
        path.addLines(points)
    }
}
