import SwiftUI

/// Adds a sequence of connected straight-line segments to the path.
public struct Lines: PathComponent {
    private let points: [CGPoint]

    public init(_ firstPoint: CGPoint, _ secondPoint: CGPoint, _ points: CGPoint...) {
        self.points = [firstPoint, secondPoint] + points
    }

    public func add(to path: inout Path) {
        path.addLines(points)
    }
}
