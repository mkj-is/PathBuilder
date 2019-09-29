
@_functionBuilder
public struct PathBuilder {
    public static func buildBlock(_ components: PathComponent...) -> PathComponent {
        return Subpath(path: .build(components: components))
    }
}
