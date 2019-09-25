import SwiftUI

public struct Close: PathComponent {
    public func add(to path: inout Path) {
        path.closeSubpath()
    }
}
