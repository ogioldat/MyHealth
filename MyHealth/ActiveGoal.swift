import Foundation

class ActiveGoal: ObservableObject {
    @Published var id: String = ""
    @Published var value: Double = 0
}
