//
//  VideoCell.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 10/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
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
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .green
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .purple
        return label
    }()
    
    let videoTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .red
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        addsubviews([thumbnailImageView,separatorView,profileImageView,titleLabel,videoTextView])
        
        NSLayoutConstraint.activate([
            thumbnailImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            thumbnailImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            thumbnailImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            separatorView.topAnchor.constraint(equalTo: bottomAnchor, constant: -1),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.bottomAnchor.constraint(equalTo: bottomAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            profileImageView.widthAnchor.constraint(equalToConstant: 44),
            profileImageView.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8),
            profileImageView.heightAnchor.constraint(equalToConstant: 44),
            profileImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
            titleLabel.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: thumbnailImageView.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 20),
            
            videoTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            videoTextView.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 8),
            videoTextView.trailingAnchor.constraint(equalTo: thumbnailImageView.trailingAnchor),
            videoTextView.heightAnchor.constraint(equalToConstant: 20),
            
            ])
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
