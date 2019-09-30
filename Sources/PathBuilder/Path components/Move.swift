import SwiftUI

/// Begins a new subpath at the specified point.
public struct Move: PathComponent {
    private let point: CGPoint

    /// Initializes path component, which begins a new subpath at the specified point.
    /// - Parameter point: The point, in user space coordinates, at which to start a new subpath.
    public init(to point: CGPoint) {
        self.point = point
    }

    public func add(to path: inout Path) {
        path.move(to: point)
    }
}
