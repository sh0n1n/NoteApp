import UIKit

protocol TableViewItemProtocol {}

struct TableViewSection {
    var title: String?
    var items: [TableViewItemProtocol]
}
