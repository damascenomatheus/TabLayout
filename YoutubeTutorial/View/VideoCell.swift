//
//  VideoCell.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 10/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

class VideoCell: BaseCell {
    
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage.init(named: "metallicaThumb")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
        return view
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage.init(named: "metallicaProfile")
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Metallica - Master of Puppets"
        return label
    }()
    
    let videoTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "MetallicaShowTV • 1,204,365,889 views • 2 years ago"
        textView.textContainerInset = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
        textView.textColor = .lightGray
        return textView
    }()
    
    override func setupViews() {
        addSubviews([thumbnailImageView,separatorView,profileImageView,titleLabel,videoTextView])
        
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
            videoTextView.heightAnchor.constraint(equalToConstant: 30),
            
            ])
    }
    
    
}
