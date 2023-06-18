import SwiftUI

struct WebView: View {
    var body: some View {
        NavigationView {
            WebEmbendedView(url: URL(string: "https://www.apple.com/"))
                .navigationTitle ("WebView")
        }
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
