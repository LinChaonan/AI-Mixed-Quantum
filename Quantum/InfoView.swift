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
            
            HStack{
                CircleImage()
                    .padding(.top, -120.0)
                VStack{
                    Text("IBM Q")
                        .font(.title)
                        .fontWeight(.regular)
                        .padding(.trailing, 50.0)
                    Text("Press the left tatb and focus the camera to the Quantum Computer to show the whole IBM Q System")
                        .multilineTextAlignment(.center)
                        .padding(.trailing, 20.0)
                }
            }
            HStack{
                CircleImage()
                    .padding(.top, -120.0)
                VStack{
                    Text("IBM Q")
                        .font(.title)
                        .fontWeight(.regular)
                        .padding(.trailing, 50.0)
                    Text("Press the left tatb and focus the camera to the Quantum Computer to show the whole IBM Q System")
                        .multilineTextAlignment(.center)
                        .padding(.trailing, 20.0)
                }
            }
            HStack{
                CircleImage()
                    .padding(.top, -120.0)
                VStack{
                    Button {
                        showWebView.toggle()
                    } label: {
                        Text("Watson")
                            .font(.title)
                    }
                    .sheet(isPresented: $showWebView) {
                        WebView(url: URL(string: "https://linchaonan.github.io/QuickLook/")!)
                    }
                    Text("Press the left tatb and focus the camera to the Quantum Computer to show the whole IBM Q System")
                        .multilineTextAlignment(.center)
                        .padding(.trailing, 20.0)
                }
            }
            

            
            

            
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
