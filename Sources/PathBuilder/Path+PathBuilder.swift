import SwiftUI

public extension Path {

    init(@PathBuilder _ builder: () -> PathComponent) {
        self.init { path in
            builder().add(to: &path)
        }
    }
}
