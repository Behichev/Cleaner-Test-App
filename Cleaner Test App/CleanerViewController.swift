//
//  CleanerViewController.swift
//  Cleaner Test App
//
//  Created by Ivan Behichev on 29.03.2023.
//

import UIKit

final class CleanerViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak private var photoButton: UIButton!
    @IBOutlet weak private var videosButton: UIButton!
    @IBOutlet weak private var memoryView: MemoryView!
    @IBOutlet weak private var secretStorageButton: UIButton!
    @IBOutlet weak private var resultView: ResultView!
    @IBOutlet weak private var contactsResultView: ResultView!
    @IBOutlet weak private var photoResultView: ResultView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureContent()
    }
    
    private func configureContent() {
        photoResultView.configure(with: ResultConfigure(titile: "Duplicate photo", imageName: "duplicatePhotos"))
        resultView.configure(with: ResultConfigure(titile: "Duplicate screenshots", imageName: "duplicateScreenshots"))
    }
    
    private func setupUI() {
        secretStorageButton.titleLabel?.numberOfLines = 2
        secretStorageButton.titleLabel?.textAlignment = .center
        secretStorageButton.setTitle("SECRET\nSTORAGE", for: .normal)
        secretStorageButton.titleLabel?.textAlignment = .center
        secretStorageButton.layer.shadowColor = UIColor.black.cgColor
        secretStorageButton.layer.shadowRadius = 8
        secretStorageButton.layer.shadowOpacity = 0.5
        secretStorageButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        secretStorageButton.layer.masksToBounds = false
        secretStorageButton.layer.shadowPath = UIBezierPath(roundedRect: secretStorageButton.bounds,
                                                                cornerRadius: secretStorageButton.bounds.height / 2).cgPath

        
        photoButton.titleLabel?.numberOfLines = 2
        photoButton.titleLabel?.textAlignment = .center
        photoButton.setTitle("ALL\nPHOTOS", for: .normal)
        photoButton.titleLabel?.textAlignment = .center
        photoButton.layer.shadowColor = UIColor.black.cgColor
        photoButton.layer.shadowRadius = 8
        photoButton.layer.shadowOpacity = 0.5
        photoButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        photoButton.layer.masksToBounds = false
        photoButton.layer.shadowPath = UIBezierPath(roundedRect: photoButton.bounds,
                                                                cornerRadius: photoButton.bounds.height / 2).cgPath
        
        videosButton.titleLabel?.numberOfLines = 2
        videosButton.titleLabel?.textAlignment = .center
        videosButton.setTitle("ALL\nVIDEOS", for: .normal)
        videosButton.titleLabel?.textAlignment = .center
        videosButton.layer.shadowColor = UIColor.black.cgColor
        videosButton.layer.shadowRadius = 8
        videosButton.layer.shadowOpacity = 0.5
        videosButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        videosButton.layer.masksToBounds = false
        videosButton.layer.shadowPath = UIBezierPath(roundedRect: videosButton.bounds,
                                                                cornerRadius: videosButton.bounds.height / 2).cgPath
        
        resultView.layer.shadowColor = UIColor.black.cgColor
        resultView.layer.shadowRadius = 8
        resultView.layer.shadowOpacity = 0.8
        resultView.layer.shadowOffset = CGSize(width: 0, height: 4)
        resultView.layer.masksToBounds = false
        resultView.backgroundColor = .white
        resultView.layer.shadowPath = UIBezierPath(roundedRect: resultView.bounds,
                                                                cornerRadius: resultView.bounds.height / 2).cgPath
        resultView.layer.cornerRadius = resultView.frame.size.height / 2
        resultView.layer.borderWidth = 1.5
        resultView.layer.borderColor = UIColor.lightGray.cgColor
        
        contactsResultView.layer.shadowColor = UIColor.black.cgColor
        contactsResultView.layer.shadowRadius = 8
        contactsResultView.layer.shadowOpacity = 0.8
        contactsResultView.layer.shadowOffset = CGSize(width: 0, height: 4)
        contactsResultView.layer.masksToBounds = false
        contactsResultView.backgroundColor = .white
        contactsResultView.layer.shadowPath = UIBezierPath(roundedRect: contactsResultView.bounds,
                                                                cornerRadius: contactsResultView.bounds.height / 2).cgPath
        contactsResultView.layer.cornerRadius = resultView.frame.size.height / 2
        contactsResultView.layer.borderWidth = 1.5
        contactsResultView.layer.borderColor = UIColor.lightGray.cgColor
        
        photoResultView.layer.shadowColor = UIColor.black.cgColor
        photoResultView.layer.shadowRadius = 8
        photoResultView.layer.shadowOpacity = 0.8
        photoResultView.layer.shadowOffset = CGSize(width: 0, height: 4)
        photoResultView.layer.masksToBounds = false
        photoResultView.backgroundColor = .white
        photoResultView.layer.shadowPath = UIBezierPath(roundedRect: photoResultView.bounds,
                                                                cornerRadius: photoResultView.bounds.height / 2).cgPath
        photoResultView.layer.cornerRadius = resultView.frame.size.height / 2
        photoResultView.layer.borderWidth = 1.5
        photoResultView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    //MARK: - Actions
    @IBAction private func backButtonTapped(_ sender: UIButton) {
            sender.setImage(sender.currentImage?.withRenderingMode(.alwaysTemplate), for: .normal)
        sender.tintColor = sender.tintColor.withAlphaComponent(0.2)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                sender.setImage(sender.currentImage?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
        print("Tapped")
        }
}
