//
//  ContentView.swift
//  Quantum
//
//  Created by Chaonan Lin on 05/07/2022.
//

import SwiftUI


struct InfoView : View {
    
    @State private var showWebView = false
    
    var body: some View {
        
        
        VStack {


            Text("IBM Quantum Computer")
                .font(.title)
                .padding(.top)
            
            Button {
                showWebView.toggle()
            } label: {
                Text("Watson")
            }
            .sheet(isPresented: $showWebView) {
                WebView(url: URL(string: "https://linchaonan.github.io/QuickLook/")!)
            }
            
            
            CircleImage()
            
        }


    }
}


#if DEBUG
struct InfoView_Previews : PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
#endif
