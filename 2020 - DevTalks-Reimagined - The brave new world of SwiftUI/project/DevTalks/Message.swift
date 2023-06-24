import Foundation

struct Message: Identifiable {
    var id: String
    var sender: String
    var content: String
    
    var direction: Direction
    
    var wasDelivered: Bool
    var wasRead: Bool
    
    var status: String {
        return wasRead ? "Read" : (wasDelivered ? "Delivered" : "")
    }
    
    
    enum Direction {
        case incoming
        case outgoing
    }
}

