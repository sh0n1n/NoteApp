import UIKit
import SnapKit

final class NoteViewController: UIViewController {
    // MARK: GUI Variables
    private let attachmentView: UIImageView = {
        let view = UIImageView()
        
        view.layer.cornerRadius = 10
        view.image = UIImage(systemName: "photo")
        view.layer.masksToBounds = true
        view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    private let texttView: UITextView = {
        let view = UITextView()
        
        return view
    }()
    
    //MARK: Life Sycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    //MARK: Private Methods
    private func setupUI() {
        view.addSubview(attachmentView)
        view.addSubview(texttView)
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        attachmentView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview().inset(10)
        }
        
        texttView.snp.makeConstraints { make in
            make.top.equalTo(attachmentView.snp.bottom).offset(10)
            make.leading.trailing.bottom.equalToSuperview().inset(10)
        }
    }
}
