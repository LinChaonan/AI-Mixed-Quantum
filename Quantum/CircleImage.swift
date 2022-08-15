//
//  CircleImage.swift
//  Quantum
//
//  Created by Chaonan Lin on 2022/8/8.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        NavigationView{
        NavigationLink(destination: ModelView()){
        Image("IBMQ")
            .resizable()
            .frame(width: 150.0, height: 150.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.blue, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
    }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
