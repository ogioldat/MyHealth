
import Foundation

class ActiveGoalStore: ObservableObject {
    @Published var activeGoal: Goal?
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathComponent("goals.data")
    }
    
    func load() async throws {
        let task = Task<Goal?, Error> {
            let fileURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: fileURL) else {
                return nil
            }
            let dailyScrums = try JSONDecoder().decode(Goal.self, from: data)
            return dailyScrums
        }
        let scrums = try await task.value
    }
}
