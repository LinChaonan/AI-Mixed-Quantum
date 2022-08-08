//
//  ARQLView.swift
//  Quantum
//
//  Created by Chaonan Lin on 2022/8/8.
//

import SwiftUI

struct ARQLView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ARQLViewController

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    func makeUIViewController(context: Context) -> ARQLViewController {
        let viewController = ARQLViewController()
        return viewController
    }

    func updateUIViewController(_ uiViewController: ARQLViewController, context: Context) {
    }

    class Coordinator: NSObject {
        var parent: ARQLView
        init(_ parent: ARQLView) {
            self.parent = parent
        }
    }
}

struct ARQLView_Previews: PreviewProvider {
    static var previews: some View {
        ARQLView()
    }
}
