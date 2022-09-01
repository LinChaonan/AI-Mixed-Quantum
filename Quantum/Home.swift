//  Home.swift


import SwiftUI

struct Home: View {

   @State var show = false

   var body: some View {
      ZStack(alignment: .top) {
         CardView()
            .blur(radius: show ? 20 : 0)
            .transaction { transaction in
                transaction.animation = nil
            }
//            .animation(.default)
      }
      .background(Color("background"))
      .edgesIgnoringSafeArea(.all)
   }
}

#if DEBUG
struct Home_Previews: PreviewProvider {
   static var previews: some View {
      Home()
   }
}
#endif


