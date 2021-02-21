import SwiftUI

/// A custom result builder which constructs Paths from closures.
@resultBuilder
public struct PathBuilder {
    public static func buildArray(_ components: [PathComponent]) -> PathComponent {
        components
    }

    public static func buildBlock(_ components: PathComponent...) -> PathComponent {
        components
    }

    /// Enables support for `if` statements that do not have an `else`.
    public static func buildOptional(_ component: PathComponent?) -> PathComponent {
        component ?? EmptySubpath()
    }

    public static func buildEither(first: PathComponent) -> PathComponent {
        first
    }

    public static func buildEither(second: PathComponent) -> PathComponent {
        second
    }
    
    /// information.
    public static func buildLimitedAvailability(_ component: PathComponent) -> PathComponent {
        component
    }
    
    public static func buildFinalResult(_ component: PathComponent) -> Path {
        Path { path in
            component.add(to: &path)
        }
    }
}
