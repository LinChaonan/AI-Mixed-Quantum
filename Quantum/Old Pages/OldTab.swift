//
//  ContentView.swift
//  Quantum
//
//  Created by Chaonan Lin on 05/07/2022.
//

import SwiftUI
import RealityKit


struct OldTabView : View {
    
    @State private var selectedTab = 1
    
    var body: some View {

        
        TabView (selection: $selectedTab){
            AugmentedRealityView()
                .tabItem {
                    Label("A", systemImage: "pencil.circle")
                    Text("Editor")
                }
                .tag(0)
         
            InfoView()
                .tabItem {
                    Label("B", systemImage: "note.text")
                    Text("Notes")
                }
                .tag(1)
         
            ModelView()
                .tabItem {
                    Label("C", systemImage: "square.and.arrow.up")
                    Text("Share")
                }
                .tag(2)
         
                }
        }
    }


#if DEBUG
struct OldTabView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
