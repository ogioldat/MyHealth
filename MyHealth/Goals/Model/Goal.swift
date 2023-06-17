struct Goal: Decodable, Hashable {
    var id: String
    var value: Int
    var emoji: String
    var emojiBgColor: String
    var title: String
    var description: String
}
