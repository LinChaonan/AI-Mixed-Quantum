//
//  ContentView.swift
//  Quantum
//
//  Created by Chaonan Lin on 05/07/2022.
//

import SwiftUI
import RealityKit


struct AugmentedRealityView : View {
    var body: some View {
        
        VStack {
            
            Text("IBM")
                .font(.title)
                .padding(.top, 150.0)
            
//                ARViewContainer()
                
            
        }
    }
}

struct ARViewContainer: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {

        let arView = ARView(frame: .zero)

        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()

        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)

        return arView

    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}

}

#if DEBUG
struct AugmentedRealityView_Previews : PreviewProvider {
    static var previews: some View {
        AugmentedRealityView()
    }
}
#endif
