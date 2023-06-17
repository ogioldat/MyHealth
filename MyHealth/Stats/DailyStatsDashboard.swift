import SwiftUI

struct DailyStatsDashboard: View {
    var dailyStats: DailyStats?
    @EnvironmentObject private var activeGoal: ActiveGoal
    
    var body: some View {
        VStack{
            if (dailyStats == nil) {
                Text("Ooops!").font(.title)
                Text("Looks like there is no data to be displayed,")
                Text("please grant permission to read health data")
            } else {
//              EXAM 3
//                if(dailyStats!.distance > 1000) {
//                    Text("1 km reached")
//                }
//              EXAM 4
//                if (dailyStats!.numberOfSteps > Int((activeGoal.value ?? 0))) {
//                    Text("✅ Goal fulfilled").font(.headline).padding()
//                } else {
//                    Text("❌ Goal not fulfilled").font(.headline).padding()
//                }
                
                GoalGauge(
                    steps: dailyStats!.numberOfSteps,
                    goal: activeGoal.value // for now hardcoded
                )
                
                // EXAM 5
//                HStack{
//                    Spacer()
//                    VStack {
//                        Text("Floors").font(.title)
//                        Text(dailyStats!.floors.formatted())
//                    }
//
//                    Spacer()
//
                // EXAM 6
//                    VStack {
//                        Text("Distance").font(.title)
//                        Text(dailyStats!.distance.formatted() + " meters")
//                    }
//                    Spacer()
//                }
            }
        }
    }
}

struct DailyStatsDashboard_Previews: PreviewProvider {
    static var previews: some View {
        DailyStatsDashboard()
    }
}
