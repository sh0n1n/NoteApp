import UIKit

protocol NotesListViewModelProtocol {
    var section: [TableViewSection] { get }
}

final class NotesListViewModel: NotesListViewModelProtocol {
    private(set) var section: [TableViewSection] = []
    
    init() {
        getNotes()
        setMocks()
    }
    
    private func getNotes() {
        
    }
    
    private func setMocks() {
        let section = TableViewSection(title: "16 Jul 2025", items: [Note(title: "First title", description: "1st description", date: Date(), imageUrl: nil, image: nil),
                                                                     Note(title: "Second title", description: "2nd description", date: Date(), imageUrl: nil, image: nil)])
        
        self.section = [section]
    }
}
