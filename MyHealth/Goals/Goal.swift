import SwiftUI

struct Goal: View {
    var emoji: String
    var emojiBgColor: Color
    var title: String
    var description: String
    
    var body: some View {
        HStack{
            Text(emoji)
                .frame(width: 30, height: 30, alignment: .center)
                    .padding()
                .background(
                        Circle()
                            .fill(emojiBgColor)
                        .padding(6)
                        .opacity(0.3)
                    )
            
            VStack(alignment: .leading){
                Text(title)
                    .font(.headline)
                Text(description)
            }
        }
    }
}

struct Goal_Previews: PreviewProvider {
    static var previews: some View {
        Goal(
            emoji: "👌",
            emojiBgColor: Color("Sea"),
            title: "3000 steps",
            description: "Good start"
        )
    }
}
