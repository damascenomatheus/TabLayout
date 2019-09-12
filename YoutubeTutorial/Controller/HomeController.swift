//
//  ViewController.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 09/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.backgroundColor = .white
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: "Home")
        setupMenuBar()
        setupNavBar()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9019607843, green: 0.1254901961, blue: 0.1215686275, alpha: 1)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
//        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.textColor = .white
        titleLabel.text = "Home"
        navigationItem.titleView = titleLabel
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Home", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.width - 16 - 16) * 9/16
        return CGSize(width: view.frame.width, height: height + 16 + 68)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func setupMenuBar() {
        let menuBar: MenuBar = {
            let mb = MenuBar()
            mb.translatesAutoresizingMaskIntoConstraints = false
            return mb
        }()
        
        view.addSubview(menuBar)
        NSLayoutConstraint.activate([
            menuBar.leadingAnchor.constraint(equalTo: self.collectionView.leadingAnchor),
            menuBar.trailingAnchor.constraint(equalTo: self.collectionView.trailingAnchor),
            menuBar.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            menuBar.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
}



