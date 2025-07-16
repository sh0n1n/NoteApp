import UIKit

struct Note: TableViewItemProtocol {
    let title: String
    let description: String
    let date: Date
    let imageUrl: String?
    let image: Data?
}
