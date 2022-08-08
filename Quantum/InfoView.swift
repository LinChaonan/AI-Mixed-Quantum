//
//  ContentView.swift
//  Quantum
//
//  Created by Chaonan Lin on 05/07/2022.
//

import SwiftUI


struct InfoView : View {
    var body: some View {
        
        VStack {


            Text("IBM Quantum Computer")
                .font(.title)
                .padding(.top)
            Text("Information PlaceHolder")
            
            
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
