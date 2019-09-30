import SwiftUI

/// Appends a straight line segment from the current point to the specified point.
public struct Line: PathComponent {
    private let point: CGPoint

    public init(to point: CGPoint) {
        self.point = point
    }

    public func add(to path: inout Path) {
        path.addLine(to: point)
    }
}
