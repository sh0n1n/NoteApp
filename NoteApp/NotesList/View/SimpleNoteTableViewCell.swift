import SnapKit
import UIKit

final class SimpleNoteTableViewCell: UITableViewCell {
     
    //MARK: GUI VARIABLESconstant
    private let containerView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 10
        
        return view
    }()
    
   private let titleLabel: UILabel = {
       let label = UILabel()
       
       label.text =  "Title Label Text"
       label.font = .boldSystemFont(ofSize: 20)
       
       return label
   }()
    
    //MARK: Inializations
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Methods
    func set(note: Note) {
        titleLabel.text = note.title
    }
    
    // MARK: Private Methods
    private func setupUI() {
        addSubview(containerView)
        containerView.addSubview(titleLabel)
        
        setupConsraints()
    }
    private func setupConsraints() {
        containerView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(5)
            make.leading.trailing.equalToSuperview().inset(10)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(10)
        }
    }
}
