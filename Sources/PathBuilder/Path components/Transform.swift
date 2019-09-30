import SwiftUI

/// Appends another transformed subpath object to the path.
public struct Transform: PathComponent {
    private let transform: CGAffineTransform
    private let path: Path

    /// Initializes path component, which appends another transformed subpath object to the path.
    /// - Parameter transform: An affine transform to apply to the subpath before adding to the path.
    public init(transform: CGAffineTransform, @PathBuilder _ builder: () -> PathComponent) {
        self.transform = transform
        self.path = Path(builder)
    }

    public func add(to path: inout Path) {
        path.addPath(path.applying(transform))
    }
}
