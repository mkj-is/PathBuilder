import SwiftUI

public struct Close: PathComponent {
    public init() {}

    public func add(to path: inout Path) {
        path.closeSubpath()
    }
}
