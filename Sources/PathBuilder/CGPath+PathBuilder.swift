import SwiftUI

public extension CGPath {
    /// CF types does not support both convenience and designated initializers.
    static func build(@PathBuilder _ builder: () -> PathComponent) -> CGPath {
        return build(components: [builder()])
    }

    static func build(components: [PathComponent]) -> CGPath {
        let path = CGMutablePath()
        for component in components {
            component.add(to: path)
        }
        return path
    }
}
