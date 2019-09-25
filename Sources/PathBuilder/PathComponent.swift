import SwiftUI

public protocol PathComponent {
    func add(to path: inout Path)
}
