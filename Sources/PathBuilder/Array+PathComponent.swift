import SwiftUI

extension Array: PathComponent where Element == PathComponent {
    public func add(to path: inout Path) {
        for component in self {
            component.add(to: &path)
        }
    }
}
