import SwiftUI

public struct Ellipse: PathComponent {
    private let rect: CGRect

    public init(in rect: CGRect) {
        self.rect = rect
    }

    public func add(to path: inout Path) {
        path.addEllipse(in: rect)
    }

    public func add(to cgPath: CGMutablePath) {
        cgPath.addEllipse(in: rect)
    }
}

