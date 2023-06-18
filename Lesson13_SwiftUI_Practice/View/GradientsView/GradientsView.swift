import SwiftUI

struct GradientsView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [
                Color("blueColor"),
                Color(.systemPink)
            ]),
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea(.all, edges: .all)
            VStack {
                Image (systemName: "sun.max.fill")
                    .resizable()
                    .renderingMode (.original)
                    .frame (width: 220, height: 220, alignment: .center)
                    .padding()
                Text ("Sunny!")
                    .font(.system(size: 30, weight: .bold, design:
                            .default))
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
}

struct GradientsView_Previews: PreviewProvider {
    static var previews: some View {
        GradientsView()
    }
}
