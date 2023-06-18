import SwiftUI

struct SecondNavigationView: View {
    var body: some View {
        VStack {
            Image (systemName: "house")
                .resizable ()
                .aspectRatio(contentMode:.fit)
                .frame (width: 200, height: 200, alignment: .center)
                .padding ()
            Text("Second Screen" )
                .font(.system(size: 30, weight: .light, design: .default))
                .padding()
            NavigationLink(
                destination: ButtonActionView(),
                label: {
                    GoBackViewButton()
                }
            )
        }
        .navigationTitle("Detail")
    }
}

struct SecondNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SecondNavigationView()
    }
}

struct GoBackViewButton: View {
    var body: some View {
        Text ("Go back")
            .frame (width: 200, height: 50, alignment: .center)
            .background (Color.pink)
            .foregroundColor (.white)
            .cornerRadius (8)
    }
}
