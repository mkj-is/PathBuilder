import SwiftUI

public struct RoundedRect: PathComponent {
    private let rect: CGRect
    private let cornerSize: CGSize
    private let style: RoundedCornerStyle

    public init(in rect: CGRect, cornerSize: CGSize, style: RoundedCornerStyle = .circular) {
        self.rect = rect
        self.cornerSize = cornerSize
        self.style = style
    }

    public func add(to path: inout Path) {
        path.addRoundedRect(in: rect, cornerSize: cornerSize, style: style)
    }
}
