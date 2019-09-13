//
//  BaseCell.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 12/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
    }
}
