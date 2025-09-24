import UIKit

enum NoteCategory: String, CaseIterable {
    case personal
    case work
    case shopping
    case ideas
    case other
}
struct Note: TableViewItemProtocol {
    let title: String
    let description: String
    let date: Date
    let imageUrl: String?
    let image: Data?
    let category: NoteCategory
}
