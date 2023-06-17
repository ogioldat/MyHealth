import SwiftUI

struct GoalSelection: View {
    let goal: Goal
    @EnvironmentObject private var activeGoal: ActiveGoal
    
    private func isSelected() -> Bool {
        return activeGoal.id == goal.id
    }
    
    var body: some View {
        HStack{
            Text(isSelected() ?  "✅" : goal.emoji)
                .frame(width: 30, height: 30, alignment: .center)
                    .padding()
                .background(
                        Circle().fill(
                            isSelected() ? Color.green :
                            Color(goal.emojiBgColor))
                        .padding(6)
                        .opacity(0.3)
                    )
            
            VStack(alignment: .leading){
                Text(goal.title)
                    .font(.headline)
                Text(goal.description)
            }
            Spacer()
        }
        .background(Color.gray.opacity(0.001))
    }
}

struct GoalSelection_Previews: PreviewProvider {
    @State var selectedGoal: Goal?
    static var previews: some View {
        GoalSelection(goal: goals[0])
    }
}
