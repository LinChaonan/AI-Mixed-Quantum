import SwiftUI
import RealityKit
import ARKit

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        let scene = try! Experience.loadIBMQ()
        arView.scene.addAnchor(scene)
        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) { }
}

struct AugmentedRealityView: View {
    var body: some View {
        ARViewContainer()
    }
}
