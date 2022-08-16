//  HomeList.swift

import SwiftUI

struct HomeList: View {

   var courses = coursesData
   @State var showContent = false
    @State var showContent2 = false
    @State var showContent3 = false

   var body: some View {
      ScrollView {
         VStack {
            HStack {
               VStack(alignment: .leading) {
                  Text("IBM Quantum")
                     .font(.largeTitle)
                     .fontWeight(.heavy)

                  Text("IBM Quantum Introduction")
                     .foregroundColor(.gray)
               }
               Spacer()
            }
            .padding(.leading, 60.0)

            ScrollView(.horizontal, showsIndicators: false) {
               HStack(spacing: 30.0) {

                     Button(action: { self.showContent.toggle() }) {
                        GeometryReader { geometry in
                           CourseView(title: "Watson",
                                      image: "Illustration1",
                                      color: Color("background3"),
                                      shadowColor: Color("backgroundShadow3"))
                              .rotation3DEffect(Angle(degrees:
                                 Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                              .sheet(isPresented: self.$showContent) {                         WebView(url: URL(string: "https://www.baidu.com")!)}
                        }
                        .frame(width: 246, height: 360)
                     }
                   
                   Button(action: { self.showContent2.toggle() }) {
                      GeometryReader { geometry in
                         CourseView(title: "Quick Look",
                                    image: "Illustration1",
                                    color: Color("background4"),
                                    shadowColor: Color("backgroundShadow4"))
                            .rotation3DEffect(Angle(degrees:
                               Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                            .sheet(isPresented: self.$showContent2) {
                                VStack {
                                    HStack {
                                        Button("Close") {
                                            self.showContent2.toggle()
                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    ARQuickLookView(name: "A")
                                }
                                }
                      }
                      .frame(width: 246, height: 360)
                   }
                   
                   Button(action: { self.showContent3.toggle() }) {
                      GeometryReader { geometry in
                         CourseView(title: "Quick Look B",
                                    image: "Illustration1",
                                    color: Color("background7"),
                                    shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5))
                            .rotation3DEffect(Angle(degrees:
                               Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                            .sheet(isPresented: self.$showContent3) {
                                VStack {
                                    HStack {
//                                        Button("Close") {
//                                            self.showContent3.toggle()
//                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    ARQuickLookView(name: "B")
                                }
                                }
                      }
                      .frame(width: 246, height: 360)
                   }
                   
                   Button(action: { self.showContent3.toggle() }) {
                      GeometryReader { geometry in
                         CourseView(title: "Quick Look B",
                                    image: "Illustration1",
                                    color: Color("background7"),
                                    shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5))
                            .rotation3DEffect(Angle(degrees:
                               Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                            .sheet(isPresented: self.$showContent3) {
                                VStack {
                                    HStack {
//                                        Button("Close") {
//                                            self.showContent3.toggle()
//                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    ARQuickLookView(name: "B")
                                }
                                }
                      }
                      .frame(width: 246, height: 360)
                   }
                   
                   Button(action: { self.showContent3.toggle() }) {
                      GeometryReader { geometry in
                         CourseView(title: "IBM Q",
                                    image: "Illustration4",
                                    color: Color("background7"),
                                    shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5))
                            .rotation3DEffect(Angle(degrees:
                               Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                            .sheet(isPresented: self.$showContent3) {
                                VStack {
                                    HStack {
//                                        Button("Close") {
//                                            self.showContent3.toggle()
//                                        }
                                        Spacer()
                                    }
                                    .padding()
                                    ARQuickLookView(name: "B")
                                }
                                }
                      }
                      .frame(width: 246, height: 360)
                   }
                   
                   
                  }
               }
               .padding(.leading, 30)
               .padding(.top, 30)
               .padding(.bottom, 70)
               Spacer()
            }
         }
         .padding(.top, 78)
      }
   }
//}

#if DEBUG
struct HomeList_Previews: PreviewProvider {
   static var previews: some View {
      HomeList()
   }
}
#endif

struct CourseView: View {

   var title = "Watson"
   var image = "Illustration1"
   var color = Color("background3")
   var shadowColor = Color("backgroundShadow3")

   var body: some View {
      return VStack(alignment: .leading) {
         Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(30)
            .lineLimit(4)

         Spacer()

         Image(image)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 246, height: 170)
            .padding(.bottom, 80)
      }
      .background(color)
      .cornerRadius(30)
      .frame(width: 246, height: 360)
      .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
   }
}

struct Course: Identifiable {
   var id = UUID()
   var title: String
   var image: String
   var color: Color
   var shadowColor: Color
}

let coursesData = [
   Course(title: "Watson",
          image: "Illustration1",
          color: Color("background3"),
          shadowColor: Color("backgroundShadow3")),
   Course(title: "AR Quick Look",
          image: "Illustration2",
          color: Color("background4"),
          shadowColor: Color("backgroundShadow4")),
   Course(title: "IBM Q",
          image: "Illustration3",
          color: Color("background7"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
//   Course(title: "Framer Playground",
//          image: "Illustration4",
//          color: Color("background8"),
//          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
//   Course(title: "Flutter for Designers",
//          image: "Illustration5",
//          color: Color("background9"),
//          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
]
