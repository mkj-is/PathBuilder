import SwiftUI
import DeveloperToolsSupport

@available(macOS 11.0, *)
struct LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(
            Path {
                Move(to: CGPoint(x: 0, y: 0))
                // ...
                Close()
            }
        )
        LibraryItem(
            Subpath {
                Move(to: CGPoint(x: 0, y: 0))
                // ...
            }
        )
        LibraryItem(Arc(center: .zero, radius: 20, startAngle: .zero, endAngle: .degrees(180)))
        LibraryItem(Close())
        LibraryItem(Curve(to: CGPoint(x: 10, y: 10), control1: CGPoint(x: 5, y: 5), control2: CGPoint(x: 10, y: 10)))
        LibraryItem(EmptySubpath())
        LibraryItem(Line(to: CGPoint(x: 50, y: 50)))
        LibraryItem(Lines(CGPoint(x: 60, y: 60), CGPoint(x: 70, y: 70)))
        LibraryItem(Loop(sequence: 0..<10) { i in
            Line(to: CGPoint(x: i * 5, y: i * 5))
        })
        LibraryItem(Oval(in: CGRect(x: 0, y: 0, width: 10, height: 20)))
        LibraryItem(QuadCurve(to: CGPoint(x: 0, y: 0), control: CGPoint(x: 10, y: 10)))
        LibraryItem(Rect(CGRect(x: 0, y: 0, width: 100, height: 100), CGRect(x: 10, y: 10, width: 20, height: 30)))
        LibraryItem(RelativeArc(center: CGPoint(x: 0, y: 0), radius: 10, startAngle: .degrees(60), delta: .degrees(180)))
        LibraryItem(RoundedRect(in: CGRect(x: 10, y: 10, width: 20, height: 30), cornerSize: CGSize(width: 5, height: 10)))
        LibraryItem(TangentArc(end1: CGPoint(x: 0, y: 0), end2: CGPoint(x: 10, y: 10), radius: 3))
    }
}
