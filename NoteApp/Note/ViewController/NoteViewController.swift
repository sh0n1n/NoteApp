import UIKit
import SnapKit

final class NoteViewController: UIViewController {
    // MARK: GUI Variables
    private let attachmentView: UIImageView = {
        let view = UIImageView()
        
        view.layer.cornerRadius = 10
        view.image = UIImage(systemName: "photo")
        view.layer.masksToBounds = true
        view.contentMode = .scaleAspectFill
        
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    //MARK: Methods
    func set(note: Note) {
        texttView.text = note.title + " " + note.description
        guard let imageData = note.image,
              let image = UIImage(data: imageData) else {return}
        attachmentView.image = image
    }
    
    //MARK: Private Methods
    private func setupUI() {
        view.addSubview(attachmentView)
        view.addSubview(texttView)
        view.backgroundColor = .white
        
        setupConstraints()
        setImageHeight()
    }
    
    private func setupConstraints() {
        attachmentView.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.height.equalTo(200)
        }
        
        texttView.snp.makeConstraints { make in
            make.top.equalTo(attachmentView.snp.bottom).offset(10)
            make.leading.trailing.bottom.equalToSuperview().inset(10)
        }
    }
    
    private func setImageHeight() {
        let height = attachmentView.image != nil ? 200 : 0
        attachmentView.snp.makeConstraints { make in
            make.height.equalTo(200)
            
        }
    }
}
