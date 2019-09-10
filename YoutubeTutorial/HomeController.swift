//
//  ViewController.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 09/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

extension UIView {
    func addsubviews(_ views: [UIView]) {
        views.forEach { (view) in
            self.addSubview(view)
        }
    }
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.backgroundColor = .white
        navigationItem.title = "Home"
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: "Home")
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Home", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}

class VideoCell: UICollectionViewCell {
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .blue
        return imageView
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        addsubviews([thumbnailImageView,separatorView])
        
        NSLayoutConstraint.activate([
            thumbnailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            thumbnailImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            thumbnailImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            thumbnailImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            separatorView.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -1),
            separatorView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            separatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            separatorView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            ])
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

