import SwiftUI

public struct Close: PathComponent {
    public init() {}

    public func add(to path: inout Path) {
        path.closeSubpath()
    }

    public func add(to cgPath: CGMutablePath) {
        cgPath.closeSubpath()
    }
}
