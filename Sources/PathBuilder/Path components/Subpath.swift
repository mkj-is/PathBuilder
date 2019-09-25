import SwiftUI

public struct Subpath: PathComponent {
    private let path: Path

    public init(@PathBuilder _ builder: () -> [PathComponent]) {
        self.path = Path(builder)
    }

    public func add(to path: inout Path) {
        path.addPath(self.path)
    }
}
