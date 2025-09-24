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
        
        view.layer.borderColor = UIColor.systemBackground.cgColor
        view.layer.borderWidth = 1
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
    @objc
    private func saveAction() {
        
    }
    @objc
    private func deleteAction() {
        
    }
    
    private func setupUI() {
        view.addSubview(attachmentView)
        view.addSubview(texttView)
        view.backgroundColor = .white
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(recognizer)
        
        setupConstraints()
        setImageHeight()
        setupBars()
    }
    
    private func setupConstraints() {
        attachmentView.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.height.equalTo(200)
        }
        
        texttView.snp.makeConstraints { make in
            make.top.equalTo(attachmentView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(10)
            make.bottom.equalTo(view.keyboardLayoutGuide.snp.top).inset(-10)
        }
    }
    
    private func setImageHeight() {
        let height = attachmentView.image != nil ? 200 : 0
        attachmentView.snp.makeConstraints { make in
            make.height.equalTo(200)
            
        }
    }
    
    @objc
    private func hideKeyboard() {
        texttView.resignFirstResponder()
    }
    
    private func setupBars() {
        let trshButton = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(deleteAction))
        setToolbarItems([trshButton], animated: true)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveAction))
    }
}
