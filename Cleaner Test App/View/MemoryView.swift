//
//  MemoryView.swift
//  Cleaner Test App
//
//  Created by Ivan Behichev on 30.03.2023.
//

import UIKit

final class MemoryView: UIView {
    //MARK: - Outlets
    @IBOutlet weak private var contentView: UIView!
    @IBOutlet weak private var storageNameLabel: UILabel!
    @IBOutlet weak private var storageCapacityLabel: UILabel!
    @IBOutlet weak private var totalMemoryNameLabel: UILabel!
    @IBOutlet weak private var totalMemoryCapacityLabel: UILabel!
    @IBOutlet weak private var availabelMemoryNameLabel: UILabel!
    @IBOutlet weak private var availabelCapacityMemoryLabel: UILabel!
    @IBOutlet weak private var trashMemoreNameLabel: UILabel!
    @IBOutlet weak private var trashCapacitySizeLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
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
