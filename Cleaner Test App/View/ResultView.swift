//
//  ResultView.swift
//  Cleaner Test App
//
//  Created by Ivan Behichev on 01.04.2023.
//

import UIKit

struct ResultConfigure {
    let titile: String
    let imageName: String
}
final class ResultView: UIView {

    @IBOutlet weak private var contentView: UIView!
    @IBOutlet weak private var fileLogoImage: UIImageView!
    @IBOutlet weak private var filesCountLabel: UILabel!
    @IBOutlet weak private var duplicateFilesCoutnLabel: UILabel!
    @IBOutlet weak private var duplicateNameLabel: UILabel!
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
    }
    
    func configure(with model: ResultConfigure) {
        fileLogoImage.image = UIImage(named: model.imageName)
        duplicateNameLabel.text = model.titile
    }
    
    @discardableResult private func loadView() -> UIView {
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: nil)
        let view = nib.instantiate(withOwner: self).first as! UIView
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        view.frame = bounds
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.15).cgColor
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        view.layer.cornerRadius = layer.frame.size.width / 2
        addSubview(view)
        return view
    }
}
