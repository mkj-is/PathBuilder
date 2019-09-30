import SwiftUI

/// Closes and completes a subpath in a path.
public struct Close: PathComponent {
    /// Initializes path component, which closes and completes a subpath in a path.
    public init() {}

    public func add(to path: inout Path) {
        path.closeSubpath()
    }
}
