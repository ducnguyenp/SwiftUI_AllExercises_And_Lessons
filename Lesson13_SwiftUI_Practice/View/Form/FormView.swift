import SwiftUI

class FormData: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var password = ""
    @Published var passwordAgain = ""
}

struct FormView: View {
    @ObservedObject var viewModel: FormData = FormData()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("First Name", text: $viewModel.firstName)
                        TextField("Last Name", text: $viewModel.lastName)
                    }
                    Section(footer: Text("Your password must be at least 8 characters long.")) {
                        SecureField("CreatePassword", text: $viewModel.password)
                        SecureField("Confirm Password", text: $viewModel.passwordAgain)
                    }
                    Section(header: Text("Mailing Address")) {
                        TextField("Street Address", text:$viewModel.firstName)
                        TextField("City", text: $viewModel.firstName)
                        TextField("State", text: $viewModel.firstName)
                        TextField("Postal Code", text: $viewModel.firstName)
                        TextField("Country", text: $viewModel.firstName)
                    }
                }
                Divider()
                Button(action: {
                    print(viewModel.firstName)
                }, label: {
                    Text("Coninue")
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                })
            }
            .navigationTitle("Create Account")
        }
    }
}

struct Form_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
