import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           HomeView()
             .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
           }
           SettingsView()
             .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
