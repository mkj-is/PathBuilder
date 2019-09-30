import SwiftUI

/// Begins a new subpath at the specified point.
public struct Move: PathComponent {
    private let point: CGPoint

    public init(to point: CGPoint) {
        self.point = point
    }

    public func add(to path: inout Path) {
        path.move(to: point)
    }
}
