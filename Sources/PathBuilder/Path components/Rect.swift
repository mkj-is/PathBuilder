import SwiftUI

public struct Rect: PathComponent {
    private let rects: [CGRect]

    public init(_ rects: CGRect...) {
        self.rects = rects
    }

    public func add(to path: inout Path) {
        path.addRects(rects)
    }
}
