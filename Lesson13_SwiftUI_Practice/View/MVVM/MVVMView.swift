import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var action: String
}

class ToDoList: ObservableObject {
    @Published var items: [Item] = [
        Item(action: "Get Milk")
    ]
}

struct MVVMView: View {
    @ObservedObject var viewModel: ToDoList = ToDoList()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.items) { item in
                    Text (item.action)
                }
            }
            .navigationTitle("To Do List")
            .navigationBarItems (trailing: Button(action: {
                self.viewModel.items = [
                    Item(action: "Go Running"),
                    Item(action: "Get Milk"),
                    Item(action: "Do Work"),
                    Item(action: "Upload Video"),
                    Item(action: "Teach SwiftUI"),
                ]
            }, label: { Text ("Refresh")}))
        }
    }
}

struct MVVCView_Previews: PreviewProvider {
    static var previews: some View {
        MVVMView()
    }
}
