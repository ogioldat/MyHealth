//
//  HomeView.swift
//  MyHealth
//
//  Created by Tomek Ogiołda on 14/06/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            List {
                Section("Stats") {
                    NavigationLink{
                        DailyStatsView()
                    } label: {
                        VStack(alignment: .leading){
                            Text("Steps today 👟")
                                .font(.headline)
                            Text("Keep track of your steps")
                        }
                    }
                }
                Section("goals") {
                    Goals()
                }
            }
            .navigationTitle("MyHealth 🔥")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
