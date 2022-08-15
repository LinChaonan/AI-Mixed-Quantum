//
//  TabBar.swift
//  DesignCode
//
//  Created by Mithun x on 7/15/19.
//  Copyright © 2019 Mithun. All rights reserved.
//

import SwiftUI

struct TabBar: View {
   var body: some View {
      TabView {
         Home().tabItem {
            Label("Home", systemImage: "house")
            Text("Home")
         }
         .tag(1)
          
          
          AugmentedRealityView().edgesIgnoringSafeArea(.all)
            .tabItem {
            Label("IBM Q", systemImage: "camera.on.rectangle")
            Text("IBM Q")
         }
         .tag(2)
          

      }
      .edgesIgnoringSafeArea(.top)
   }
   }

#if DEBUG
struct TabBar_Previews: PreviewProvider {
   static var previews: some View {
      TabBar()
//         .environment(\.colorScheme, .dark)
   }
}
#endif
