import UIKit

protocol NotesListViewModelProtocol {
    var section: [TableViewSection] { get }
}

final class NotesListViewModel: NotesListViewModelProtocol {
    private(set) var section: [TableViewSection] = []
    
    init() {
        getNotes()
    }
    
    private func getNotes() {
        
    }
    
    private func setMocks() {
        let section = TableViewSection(title: "16 Jul 2025", items: [Note(title: "1st title", description: "1st description", date: Date(), imageUrl: nil, imag: nil)])
        
        self.section = [section]
    }
}
