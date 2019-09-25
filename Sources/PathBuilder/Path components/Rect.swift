import SwiftUI

public struct Rect: PathComponent {
    private let rect: CGRect

    public init(_ rect: CGRect) {
        self.rect = rect
    }

    public func add(to path: inout Path) {
        path.addRect(rect)
    }
}
