import SwiftUI

public struct Loop: PathComponent {
    private let components: [PathComponent]

    public init<S: Sequence>(sequence: S, @PathBuilder _ builder: (S.Element) -> PathComponent) {
        self.components = sequence.map(builder)
    }

    public func add(to path: inout Path) {
        for component in components {
            component.add(to: &path)
        }
    }
}
