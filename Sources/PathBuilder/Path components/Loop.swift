import SwiftUI

/// Appends components to path iterating over supplied sequence and building path for each element.
public struct Loop: PathComponent {
    private let components: [PathComponent]

    /// Creates path component which appends components to path
    /// iterating over supplied sequence and building path for each element.
    /// - Parameters:
    ///   - sequence: Sequence of elements which will be used for building path components.
    ///   - builder: PathBuilder closure receiving each element and creating path component from them.
    public init<S: Sequence>(sequence: S, @PathBuilder _ builder: (S.Element) -> PathComponent) {
        self.components = sequence.map(builder)
    }

    public func add(to path: inout Path) {
        for component in components {
            component.add(to: &path)
        }
    }
}
