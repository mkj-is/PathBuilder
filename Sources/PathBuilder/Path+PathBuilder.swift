import SwiftUI

public extension Path {
    /// Initializes path using custom attribute path builder.
    init(@PathBuilder _ builder: () -> Path) {
        self = builder()
    }
}
