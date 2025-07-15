import SnapKit
import UIKit

final class SimpleNoteTableViewCell: UITableViewCell {
     //MARK: GUI VARIABLESconstant
    private let containerView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemRed
        view.layer.cornerRadius = 10
        
        return view
    }()
    
   private let titleLabel: UILabel = {
       let label = UILabel()
       
       label.text =  "Title Label Text"
       label.font = .boldSystemFont(ofSize: 20)
       
       return label
   }()
    //MARK: INITIALIZATIONS
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Private Methods
    private func setupUI() {
        addSubview(containerView)
        containerView.addSubview(titleLabel)
        
        setupConsraints()
    }
    private func setupConsraints() {
        
    }
}
