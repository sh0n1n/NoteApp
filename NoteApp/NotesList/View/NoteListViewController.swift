import UIKit

class NoteListViewController: UITableViewController {
    
    //MARK: Properties
    var viewModel: NotesListViewModelProtocol?
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Notes"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setupTableView()
    }
    
    // MARK: Private Methods
    private func setupTableView() {
        tableView.register(SimpleNoteTableViewCell.self, forCellReuseIdentifier: "SimpleNoteTableViewCell")
        tableView.register(ImageNoteTableViewCell.self, forCellReuseIdentifier: "ImageNoteTableViewCell")
        
        tableView.separatorStyle = .none
    }
}

// MARK: UITableViewDataSource
extension NoteListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        viewModel?.section.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.section[section].items.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let note = viewModel?.section[indexPath.section].items[indexPath.row] as?
        Note else { return UITableViewCell() }
        if indexPath.row == 0,
           let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleNoteTableViewCell",
                                                    for: indexPath) as? SimpleNoteTableViewCell {
            cell.set(note: note)
            return cell
        } else if let cell = tableView.dequeueReusableCell(withIdentifier: "ImageNoteTableViewCell",
                                                           for: indexPath) as? ImageNoteTableViewCell {
            cell.set(note: note)
            return cell
        }
        
        return UITableViewCell()
    }
}

// MARK: UITableViewDelegate
extension NoteListViewController {
    
}
