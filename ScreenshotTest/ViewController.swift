//
//  ViewController.swift
//  ScreenshotTest
//
//  Created by Markus Faßbender on 17.06.19.
//  Copyright © 2019 Markus Faßbender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        self.imageView = imageView
        
        view.addSubview(imageView)
        
        setupConstraints()
        configure()
    }
    
    private func setupConstraints() {
        let constraints: [NSLayoutConstraint] = [
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }

    private func configure() {
        imageView.image = UIImage(named: "photo")!
    }
}

