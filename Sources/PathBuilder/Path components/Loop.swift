import SwiftUI

/// Appends components to path iterating over supplied sequence and building path for each element.
public struct Loop<S: Sequence>: PathComponent {
    private let sequence: S
    private let builder: (S.Element) -> PathComponent

    /// Creates path component which appends components to path
    /// iterating over supplied sequence and building path for each element.
    /// - Parameters:
    ///   - sequence: Sequence of elements which will be used for building path components.
    ///   - builder: PathBuilder closure receiving each element and creating path component from them.
    public init(sequence: S, @PathBuilder _ builder: @escaping (S.Element) -> PathComponent) {
        self.sequence = sequence
        self.builder = builder
    }

    public func add(to path: inout Path) {
        for element in sequence {
            builder(element).add(to: &path)
        }
    }
}
