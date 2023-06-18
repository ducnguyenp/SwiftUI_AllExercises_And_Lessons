import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                Text("This is Home")
                    .foregroundColor(.white)
            }
            .navigationTitle("Home")
        }
    }
}

struct SettingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                Text("This is Setting")
                    .foregroundColor(.white)
            }
            .navigationTitle("Settings")
        }
    }
}

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image (systemName: "house")
                Text ("Home" )
            }
            SettingView().tabItem {
                Image (systemName: "gear")
                Text ("Settings")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
