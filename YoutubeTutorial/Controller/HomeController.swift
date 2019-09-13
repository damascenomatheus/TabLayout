//
//  ViewController.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 09/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    lazy var menuBar: MenuBar = {
        let mb = MenuBar()
        mb.homeController = self
        mb.translatesAutoresizingMaskIntoConstraints = false
        return mb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupMenuBar()
        setupNavBar()
    }
    
    func setupCollectionView() {
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .clear
        collectionView.register(ContentVideoCell.self, forCellWithReuseIdentifier: "cellId")

    }
    func setupNavBar() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9019607843, green: 0.1254901961, blue: 0.1215686275, alpha: 1)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.textColor = .white
        titleLabel.text = "Home"
        navigationItem.titleView = titleLabel
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
//        let colors:[UIColor] = [.white, .lightGray]
//        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func scrollToMenuIndex(_ index: Int){
        let indexPath = IndexPath(item: index, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .init(), animated: true)
    }
    
    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let index = scrollView.contentOffset.x / view.frame.width
        let indexPath = IndexPath(item: Int(index), section: 0)
        menuBar.collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .init())
    }

    func setupMenuBar() {
        
        view.addSubview(menuBar)
        NSLayoutConstraint.activate([
            menuBar.leadingAnchor.constraint(equalTo: self.collectionView.leadingAnchor),
            menuBar.trailingAnchor.constraint(equalTo: self.collectionView.trailingAnchor),
            menuBar.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            menuBar.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
}



