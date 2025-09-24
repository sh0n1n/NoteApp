import UIKit

enum NoteCategory: String, CaseIterable {
    case personal
    case work
    case shopping
    case ideas
    case other
    
    var switchImageName: String {
        switch self {
        case .personal: return "personal"
        case .work: return "work"
        case .shopping: return "shopping"
        case .ideas: return "ideas"
        case .other: return "other"
        }
    }
    
    var color: UIColor {
        switch self {
        case .personal: return .systemBlue
        case .work: return .systemOrange
        case .shopping: return .systemTeal
        case .ideas: return .systemGray
        case .other: return .systemPink
        }
    }
}
struct Note: TableViewItemProtocol {
    let title: String
    let description: String
    let date: Date
    let imageUrl: String?
    let image: Data?
    let category: NoteCategory
}
