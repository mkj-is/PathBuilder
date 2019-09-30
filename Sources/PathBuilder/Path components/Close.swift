import SwiftUI

/// Closes and completes a subpath in a path.
public struct Close: PathComponent {
    public init() {}

    public func add(to path: inout Path) {
        path.closeSubpath()
    }
}
