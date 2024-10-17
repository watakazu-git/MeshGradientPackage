import SwiftUI

@available(iOS 14.0, macOS 15.0, *)
public struct DefaultMeshGradient: View {
    let points: [SIMD2<Float>] = [
        SIMD2<Float>(0.0, 0.0), SIMD2<Float>(0.5, 0.0), SIMD2<Float>(1.0, 0.0),
        SIMD2<Float>(0.0, 0.5), SIMD2<Float>(0.5, 0.5), SIMD2<Float>(1.0, 0.5),
        SIMD2<Float>(0.0, 1.0), SIMD2<Float>(0.5, 1.0), SIMD2<Float>(1.0, 1.0),
    ]

    let colors: [Color] = [
        Color(red: 1.00, green: 0.42, blue: 0.42),
        Color(red: 1.00, green: 0.55, blue: 0.00),
        Color(red: 1.00, green: 0.27, blue: 0.00),

        Color(red: 1.00, green: 0.41, blue: 0.71),
        Color(red: 0.85, green: 0.44, blue: 0.84),
        Color(red: 0.54, green: 0.17, blue: 0.89),

        Color(red: 0.29, green: 0.00, blue: 0.51),
        Color(red: 0.00, green: 0.00, blue: 0.55),
        Color(red: 0.10, green: 0.10, blue: 0.44)
    ]

    public var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            locations: .points(points),
            colors: .colors(colors),
            background: .black,
            smoothsColors: true
        )
        .ignoresSafeArea()
    }
}
