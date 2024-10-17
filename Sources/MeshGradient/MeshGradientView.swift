import SwiftUI

@available(iOS 18.0, macOS 15.0, *)
public struct MeshGradientView {
    @MainActor public static func defaultMeshGradient() -> some View {
        DefaultMeshGradient()
    }
}
