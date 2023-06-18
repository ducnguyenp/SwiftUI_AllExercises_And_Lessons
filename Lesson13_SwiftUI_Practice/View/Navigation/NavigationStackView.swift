import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image (systemName: "house")
                    .resizable ()
                    .aspectRatio(contentMode:.fit)
                    .frame (width: 200, height: 200, alignment: .center)
                    .padding ()
                Text("First Screen" )
                    .font(.system(size: 30, weight: .light, design: .default))
                    .padding()
                NavigationLink(
                    destination: SecondNavigationView(),
                    label: {
                        GoToViewButton()
                    }
                )
            }
            .navigationTitle("Home")
        }
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}

struct GoToViewButton: View {
    var body: some View {
        Text ("Continue")
            .frame (width: 200, height: 50, alignment: .center)
            .background (Color.pink)
            .foregroundColor (.white)
            .cornerRadius (8)
    }
}
