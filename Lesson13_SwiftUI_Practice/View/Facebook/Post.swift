import Foundation

struct Post: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var post: String
}
