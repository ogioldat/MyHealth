import SwiftUI

struct DailyStatsDashboard: View {
    var dailyStats: DailyStats?
    
    var body: some View {
        VStack{
            Text("Today's stats").font(.title).padding(10)
            
            if (dailyStats == nil) {
                Text("Ooops!").font(.title)
                Text("Looks like there is no data to be displayed, please grant permission to read health data")
            } else {
//                Text("Distance (meters)").font(.headline)
//                Text(String(dailyStats!.distance))
//
//                Text("Floors").font(.headline)
//                Text(String(dailyStats!.floors))
            }
            
            GoalGauge(
                steps: 3000,
                goal: 5000
            )
        }
    }
}

struct DailyStatsDashboard_Previews: PreviewProvider {
    static var previews: some View {
        DailyStatsDashboard()
    }
}
