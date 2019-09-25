import SwiftUI

public extension Path {
    init(@PathBuilder _ builder: () -> [PathComponent]) {
        self.init { path in
            for component in builder() {
                component.add(to: &path)
            }
        }
    }
}
