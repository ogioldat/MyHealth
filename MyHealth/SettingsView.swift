//
//  UserSettingsView.swift
//  MyHealth
//
//  Created by Tomek Ogiołda on 17/06/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var isOn = true
    
    var body: some View {
        NavigationStack{
            List {
                Section("privacy") {
                    Text("Change my profile")
                    Text("Health data sharing")
                }
                Section("notifications") {
                    Toggle("Toggle notifications", isOn: $isOn)
                }
            }
            .navigationTitle("Settings ⚙️")
        }
    }
}

struct UserSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
