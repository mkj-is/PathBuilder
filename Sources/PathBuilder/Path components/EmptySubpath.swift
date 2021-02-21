import SwiftUI

/// Convenience empty path component.
public struct EmptySubpath: PathComponent {
    /// Initializes an empty path component.
    public init() {}
    
    public func add(to path: inout Path) {}
}
