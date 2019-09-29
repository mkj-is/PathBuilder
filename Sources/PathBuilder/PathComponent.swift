import SwiftUI

public protocol PathComponent {
    func add(to path: inout Path)
    func add(to cgPath: CGMutablePath)
}
