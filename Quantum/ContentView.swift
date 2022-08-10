//
//  ContentView.swift
//  Quantum
//
//  Created by Chaonan Lin on 05/07/2022.
//

import SwiftUI
import RealityKit


struct ContentView : View {
    var body: some View {
        
        TabView {
            AugmentedRealityView()
                .tabItem {
                    Label("A", systemImage: "pencil.circle")
                    Text("Editor")
                }
         
            InfoView()
                .tabItem {
                    Label("B", systemImage: "note.text")
                    Text("Notes")
                }
         
            ModelView()
                .tabItem {
                    Label("C", systemImage: "square.and.arrow.up")
                    Text("Share")
                }
         
                }
        }
    }


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
