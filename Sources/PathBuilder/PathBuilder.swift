import SwiftUI

/// A custom result builder which constructs Paths from closures.
@resultBuilder
public struct PathBuilder {
    
    /// Enables support for 'for..in' loops by combining the
    /// results of all iterations into a single result.
    public static func buildArray(_ components: [PathComponent]) -> PathComponent {
        components
    }

    /// Required by every result builder to build combined results from
    /// statement blocks.
    public static func buildBlock(_ components: PathComponent...) -> PathComponent {
        components
    }

    /// Enables support for `if` statements that do not have an `else`.
    public static func buildOptional(_ component: PathComponent?) -> PathComponent {
        component ?? EmptySubpath()
    }

    /// With buildEither(second:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(first: PathComponent) -> PathComponent {
        first
    }

    /// With buildEither(first:), enables support for 'if-else' and 'switch'
    /// statements by folding conditional results into a single result.
    public static func buildEither(second: PathComponent) -> PathComponent {
        second
    }
    
    /// This will be called on the partial result of an 'if
    /// #available' block to allow the result builder to erase type
    /// information.
    public static func buildLimitedAvailability(_ component: PathComponent) -> PathComponent {
        component
    }
    
    /// This will be called on the partial result from the outermost
    /// block statement to produce the final returned result Path.
    public static func buildFinalResult(_ component: PathComponent) -> Path {
        Path { path in
            component.add(to: &path)
        }
    }
}
