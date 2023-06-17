import SwiftUI

struct HomeView: View {
    @StateObject private var activeGoal = ActiveGoal()
    
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
                    ForEach(goals, id: \.id) { goal in
                        GoalSelection(goal: goal)
                            .onTapGesture {
                                activeGoal.id = goal.id
                                activeGoal.value = Double(goal.value)
                            }
                    }
                }
            }
            .navigationTitle("MyHealth 🔥")
        }
        .environmentObject(activeGoal)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
