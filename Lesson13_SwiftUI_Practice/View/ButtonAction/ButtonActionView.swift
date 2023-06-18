import SwiftUI

struct ButtonActionView: View {
    @State private var alertIsPresented = false
    @State private var backgroundUpdated = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if backgroundUpdated {
                    Color.red
                }
                else {
                    Color.blue
                }
                VStack {
                    Button (action: {
                        self.alertIsPresented = true
                    }, label: {
                        Text ("Tap Me!")
                            .foregroundColor(.white)
                            .bold ()
                            .font(.system(size: 24))
                    })
                    .frame (width: 200, height: 50, alignment:.center)
                    .padding ()
                    .background (Color .green)
                    .cornerRadius (8)
                    .alert (isPresented: self.$alertIsPresented, content: {
                        Alert(title: Text("Would you like to purchase?"), primaryButton: .default(Text ("Purchase"), action: { self.backgroundUpdated.toggle() }), secondaryButton: .cancel(Text ("No, Thanks" )))
                    })
                }
            }
            .navigationTitle("SwiftUI Alert")
        }
    }
}

struct ButtonActionView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonActionView()
    }
}
