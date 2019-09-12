//
//  StatusBarBackground.swift
//  YoutubeTutorial
//
//  Created by Matheus Damasceno on 11/09/19.
//  Copyright © 2019 Matheus Damasceno. All rights reserved.
//

import UIKit

class StatusBarBackground: UIView {
    
    var windowView: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(_ view: UIView) {
        self.init()
        windowView = view
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let statusBarBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.7607843137, green: 0.1215686275, blue: 0.1215686275, alpha: 1)
        return view
    }()
    
    func setupConstraints() {
        windowView!.addSubview(statusBarBackground)
        NSLayoutConstraint.activate([
            statusBarBackground.topAnchor.constraint(equalTo: windowView!.topAnchor),
            statusBarBackground.heightAnchor.constraint(equalToConstant: 20),
            statusBarBackground.leadingAnchor.constraint(equalTo: windowView!.leadingAnchor),
            statusBarBackground.trailingAnchor.constraint(equalTo: windowView!.trailingAnchor)
            ])
    }
    
    
}
