//
//  UIView+Extensio.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 10/09/19.
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
