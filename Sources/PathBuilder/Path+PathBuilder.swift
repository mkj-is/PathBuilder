import SwiftUI

public extension Path {
    /// Initializes path using custom attribtue path builder.
    init(@PathBuilder _ builder: () -> PathComponent) {
        self.init { path in
            builder().add(to: &path)
        }
    }
}
