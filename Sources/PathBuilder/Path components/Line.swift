import SwiftUI

/// Appends a straight line segment from the current point to the specified point.
public struct Line: PathComponent {
    private let point: CGPoint

    /// Initializes path component, which appends a straight line segment from the current point to the specified point.
    /// - Parameter point: The location, in user space coordinates, for the end of the new line segment.
    public init(to point: CGPoint) {
        self.point = point
    }

    public func add(to path: inout Path) {
        path.addLine(to: point)
    }
}
