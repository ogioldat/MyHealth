//
//  Goals.swift
//  MyHealth
//
//  Created by Tomek Ogiołda on 14/06/2023.
//

import SwiftUI

struct Goals: View {
    var body: some View {
        Goal(
            emoji: "👌",
            emojiBgColor: Color("Sea"),
            title: "3000 steps",
            description: "Good for a start!"
        )
        Goal(
            emoji: "💪",
            emojiBgColor: Color("Sage"),
            title: "5000 steps",
            description: "Come on, move"
        )
        Goal(
            emoji: "😎",
            emojiBgColor: Color("Powder"),
            title: "7000 steps",
            description: "Nice, that's a lot of steps"
        )
        Goal(
            emoji: "🔥",
            emojiBgColor: Color("Pumpkin"),
            title: "10 000 steps",
            description: "WOW! Thats impressive, keep it going!"
        )
    }
}

struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}
