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
//                EXAM 2
//                Section("info") {
//                    Text("Authors info")
//                }
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
