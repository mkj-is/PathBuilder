import SwiftUI

/// Adds an ellipse that fits inside the specified rectangle to the path.
public struct Ellipse: PathComponent {
    private let rect: CGRect
    private let transform: CGAffineTransform

    /// Initializes path component, which adds an ellipse that fits inside the specified rectangle to the path.
    /// - Parameter rect: A rectangle that defines the area for the ellipse to fit in.
    /// - Parameter transform: An affine transform to apply to the ellipse before adding to the path. Defaults to the identity transform if not specified.
    public init(in rect: CGRect, transform: CGAffineTransform = .identity) {
        self.rect = rect
        self.transform = transform
    }

    public func add(to path: inout Path) {
        path.addEllipse(in: rect, transform: transform)
    }
}
