//
//  MenuCell.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 12/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

class MenuCell: BaseCell {
    
    lazy var trailLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.textColor = #colorLiteral(red: 0.3568627451, green: 0.05490196078, blue: 0.05098039216, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func setupViews() {
        addSubviews([trailLabel])
        NSLayoutConstraint.activate([
            trailLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            trailLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            ])
    }
    
    func setupTextLabel(_ index: IndexPath) {
        if(index.row == 0) {
            trailLabel.text = "Trails"
        } else {
            trailLabel.text = "Post"
        }
    }
    
}
