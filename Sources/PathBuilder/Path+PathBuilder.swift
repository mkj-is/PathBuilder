import SwiftUI

public extension Path {
    /// Initializes path using custom attribute path builder.
    init(@PathBuilder _ builder: () -> PathComponent) {
        self = Path(builder().add(to:))
    }
}
