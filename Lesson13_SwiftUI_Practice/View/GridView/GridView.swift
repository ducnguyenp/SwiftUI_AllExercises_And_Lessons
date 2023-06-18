import SwiftUI

struct GridView: View {
    let items = Array(1...8).map({ "imageLogo\($0)" })
    let layout = [
        GridItem(.flexible(minimum: 120)),
        GridItem(.flexible(minimum: 120)),
        GridItem(.flexible(minimum: 120)),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyHGrid(rows: layout, content: {
                    ForEach(items, id: \.self) { item in
                        Image(item)
                            .resizable ()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(12)
                            .padding()
                    }
                })
            }
            .navigationTitle("Apple Store")
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
