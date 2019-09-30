import SwiftUI

/// Adds a sequence of connected straight-line segments to the path.
public struct Lines: PathComponent {
    private let points: [CGPoint]

    /// Initializes path component, which adds a sequence of connected straight-line segments to the path.
    /// - Parameter points: An array of values that specify the start and end points of the line segments to draw. Each point in the array specifies a position in user space. The first point in the array specifies the initial starting point.
    public init(between points: [CGPoint]) {
        self.points = points
    }

    public func add(to path: inout Path) {
        path.addLines(points)
    }
}
