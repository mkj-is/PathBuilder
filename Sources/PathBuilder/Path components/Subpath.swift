import SwiftUI

/// Appends another path object to the path.
public struct Subpath: PathComponent {
    private let component: PathComponent

    /// Initializes path component, which appends another path object to the path.
    /// - Parameter path: Path to be appended.
    public init(path: Path) {
        self.component = path
    }

    public init(@PathBuilder _ builder: () -> Path) {
        self.component = builder()
    }

    public func add(to path: inout Path) {
        component.add(to: &path)
    }
}
