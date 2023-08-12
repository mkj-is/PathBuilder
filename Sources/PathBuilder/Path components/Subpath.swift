import SwiftUI

/// Appends another path object to the path.
public struct Subpath: PathComponent {
    private let transform: CGAffineTransform
    private let path: Path

    /// Initializes path component, which appends another path object to the path.
    /// - Parameter path: Path to be appended.
    /// - Parameter transform: An affine transform to apply to the subpath before adding to the path.
    public init(transform: CGAffineTransform = .identity, path: Path) {
        self.transform = transform
        self.path = path
    }
    
    /// Intializes subpath using path builder and then transforming it.
    /// - Parameters:
    ///   - transform: An affine transform to apply to the subpath before adding to the path.
    ///   - builder: Result builder for creating the path from components.
    public init(transform: CGAffineTransform = .identity, @PathBuilder _ builder: () -> PathComponent) {
        self.transform = transform
        self.path = Path(builder)
    }
    
    /// Intializes subpath with shape filling the provided rectangle.
    /// - Parameters:
    ///   - shape: Any SwiftUI Shape which will be converted to subpath.
    ///   - rect: Rectangle frame which will be filled with the shape.
    public init<S: Shape>(shape: S, in rect: CGRect) {
        self.path = shape.path(in: rect)
        self.transform = .identity
    }

    public func add(to path: inout Path) {
        path.addPath(self.path, transform: transform)
    }
}
