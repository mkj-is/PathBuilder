import SwiftUI

/// A component, which can be added to a path.
public protocol PathComponent {
    /// Adds itself to the path.
    func add(to path: inout Path)
}
