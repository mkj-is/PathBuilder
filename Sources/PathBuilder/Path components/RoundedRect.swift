import SwiftUI

/// Adds a subpath to the path, in the shape of a rectangle with rounded corners.
public struct RoundedRect: PathComponent {
    private let rect: CGRect
    private let cornerSize: CGSize
    private let style: RoundedCornerStyle

    /// Initializes path component, which adds a subpath to the path, in the shape of a rectangle with rounded corners.
    /// - Parameter rect: The rectangle to add, specified in user space coordinates.
    /// - Parameter cornerSize: The size, in user space coordinates, for rounded corner sections.
    /// - Parameter style: The shape of a rounded rectangle's corners.
    public init(in rect: CGRect, cornerSize: CGSize, style: RoundedCornerStyle = .circular) {
        self.rect = rect
        self.cornerSize = cornerSize
        self.style = style
    }

    public func add(to path: inout Path) {
        path.addRoundedRect(in: rect, cornerSize: cornerSize, style: style)
    }
}
