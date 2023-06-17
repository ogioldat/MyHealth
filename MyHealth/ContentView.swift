//
//  ContentView.swift
//  MyHealth
//
//  Created by Tomek Ogiołda on 14/06/2023.
//

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
