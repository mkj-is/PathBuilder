import SwiftUI

public struct Loop<S: Sequence>: PathComponent {
    private let components: [PathComponent]

    public init(sequence: S, @PathBuilder _ builder: (S.Element) -> PathComponent) {
        self.components = sequence.map(builder)
    }

    public func add(to path: inout Path) {
        for component in components {
            component.add(to: &path)
        }
    }
}
