//
//  CustomView.swift
//  Exercise1
//
//  Created by C4Q on 1/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = .vertical
        stackView.alignment = .center
        stackView.distribution  = .fillEqually
        stackView.spacing   = 0.0
        return stackView
    }()
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "PlaceHolder"
        return label
    }()
    
    convenience init(image: UIImage,
                     text: String,
                     backgroundColor: UIColor,
                     textColor: UIColor) {
        self.init(frame: UIScreen.main.bounds)
        self.imageView.image = image
        self.nameLabel.text = text
        self.backgroundColor = backgroundColor
        self.nameLabel.textColor = textColor
        setupViews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        setupViews()
    }
    
    private func setupViews() {
        setupContainerViews()
        setupNameLabel()
    }
    
    private func setupContainerViews() {
        addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive =  true
        mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
    }
    
    private func setupNameLabel() {
        mainStackView.addArrangedSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        mainStackView.addArrangedSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
    }
}
