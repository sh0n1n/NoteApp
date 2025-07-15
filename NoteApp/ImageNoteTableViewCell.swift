import SnapKit
import UIKit

final class ImageNoteTableViewCell: UITableViewCell {
    //MARK: GUI VARIABLESconstant
   private let containetView: UIView = {
       let view = UIView()
       
       view.backgroundColor = .systemRed
       view.layer.cornerRadius = 10
       
       return view
   }()
    
    private let attachmentView: UIImageView = {
        let view = UIImageView()
        
        view.layer.cornerRadius = 10
        view.image = UIImage(systemName: "photo")
        
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        
        label.text =  "Title Label Text"
        label.font = .boldSystemFont(ofSize: 20)
        
        return label
    }()
}
