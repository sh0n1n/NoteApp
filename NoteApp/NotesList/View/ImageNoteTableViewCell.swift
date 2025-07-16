import SnapKit
import UIKit

final class ImageNoteTableViewCell: UITableViewCell {
    //MARK: GUI VARIABLESconstant
    private let containerView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 10
        
        return view
    }()
    
    private let attachmentView: UIImageView = {
        let view = UIImageView()
        
        view.layer.cornerRadius = 10
        view.image = UIImage(systemName: "photo")
        view.layer.masksToBounds = true
        view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        
        label.text =  "Title Label Text"
        label.font = .boldSystemFont(ofSize: 18)
        
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
        containerView.addSubview(attachmentView)
        containerView.addSubview(titleLabel)
        
        setupConsraints()
    }
    private func setupConsraints() {
        containerView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(5)
            make.leading.trailing.equalToSuperview().inset(10)
        }
        
        attachmentView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview().inset(5)
            make.height.equalTo(100)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(attachmentView.snp.bottom).offset(10)
            make.leading.trailing.bottom.equalToSuperview().inset(10)
        }
    }
}

