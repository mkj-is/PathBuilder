import SwiftUI

/// Adds a set of rectangular subpaths to the path.
public struct Rect: PathComponent {
    private let rects: [CGRect]

    /// Initializes path component, which adds a set of rectangular subpaths to the path.
    /// - Parameter rects: An array of rectangles, specified in user space coordinates.
    public init(_ rects: CGRect...) {
        self.rects = rects
    }

    public func add(to path: inout Path) {
        path.addRects(rects)
    }
}
