import SwiftUI

/// Appends another path object to the path.
public struct Subpath: PathComponent {
    private let path: Path

    /// Initializes path component, which appends another path object to the path.
    /// - Parameter path: Path to be appended.
    public init(path: Path = Path()) {
        self.path = path
    }

    public init(@PathBuilder _ builder: () -> PathComponent) {
        self.path = Path(builder)
    }

    public func add(to path: inout Path) {
        path.addPath(self.path)
    }
}
