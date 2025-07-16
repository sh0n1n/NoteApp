import UIKit

class NoteListViewController: UITableViewController {

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
        setupTableView()
    }

    // MARK: Private Methods
    private func setupTableView() {
        tableView.register(SimpleNoteTableViewCell.self, forCellReuseIdentifier: "SimpleNoteTableViewCell")
        tableView.register(ImageNoteTableViewCell.self, forCellReuseIdentifier: "ImageNoteTableViewCell")
    }
}

// MARK: UITableViewDataSource
extension NoteListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0,
           let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleNoteTableViewCell",
                                                    for: indexPath) as? SimpleNoteTableViewCell {
            return cell
        } else if let cell = tableView.dequeueReusableCell(withIdentifier: "ImageNoteTableViewCell",
                                                           for: indexPath) as? ImageNoteTableViewCell {
            return cell
        }
        
        return UITableViewCell()
    }
}

// MARK: UITableViewDelegate
extension NoteListViewController {
    
}
