import SwiftUI

public struct Subpath: PathComponent {
    private let path: CGPath

    public init(path: CGPath = CGMutablePath()) {
        self.path = path
    }

    public init(@PathBuilder _ builder: () -> PathComponent) {
        self.path = CGPath.build(builder)
    }

    public func add(to path: inout Path) {
        path.addPath(Path(self.path))
    }

    public func add(to cgPath: CGMutablePath) {
        cgPath.addPath(self.path)
    }
}
