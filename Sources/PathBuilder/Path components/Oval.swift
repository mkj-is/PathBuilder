import SwiftUI

/// Adds an ellipse that fits inside the specified rectangle.
public struct Oval: PathComponent {
    private let rect: CGRect

    /// Initializes path component, which adds an ellipse that fits inside the specified rectangle.
    /// - Parameter rect: A rectangle that defines the area for the ellipse to fit in.
    public init(in rect: CGRect) {
        self.rect = rect
    }

    public func add(to path: inout Path) {
        path.addEllipse(in: rect)
    }
}

