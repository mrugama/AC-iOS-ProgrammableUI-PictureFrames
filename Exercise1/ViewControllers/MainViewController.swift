//
//  Exercise1ViewController.swift
//  Exercise1
//
//  Created by C4Q on 1/4/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let pitonView = CustomView(image: #imageLiteral(resourceName: "ptions"),
                               text: "The Pitons",
                               backgroundColor: .green,
                               textColor: .black)
    let dragonView = CustomView(image: #imageLiteral(resourceName: "dragon"),
                                text: "Year of Dragons",
                                backgroundColor: .yellow,
                                textColor: .black)
    let monkeyView = CustomView(image: #imageLiteral(resourceName: "monkey"),
                                text: "Year of Monkey",
                                backgroundColor: .red,
                                textColor: .black)
    let heartView = CustomView(image: #imageLiteral(resourceName: "heart"),
                               text: "I heart Swift",
                               backgroundColor: .blue,
                               textColor: .white)
    
    lazy var rootStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = UILayoutConstraintAxis.vertical
        stackView.distribution  = UIStackViewDistribution.fillEqually
        stackView.alignment = UIStackViewAlignment.fill
        stackView.spacing   = 0.0
        return stackView
    }()
    
    lazy var topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = UILayoutConstraintAxis.horizontal
        stackView.distribution  = UIStackViewDistribution.fillEqually
        stackView.alignment = UIStackViewAlignment.fill
        stackView.spacing   = 0.0
        return stackView
    }()
    
    lazy var bottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = UILayoutConstraintAxis.horizontal
        stackView.distribution  = UIStackViewDistribution.fillEqually
        stackView.alignment = UIStackViewAlignment.fill
        stackView.spacing   = 0.0
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupViews()
    }
    
    private func setupViews() {
        fnMainStackView()
        fnMainStackViewConstrains()
        fnTopStackView()
        fnBottomStackView()
    }
    
    private func fnMainStackView() {
        view.addSubview(rootStackView)
        rootStackView.translatesAutoresizingMaskIntoConstraints = false
        
        rootStackView.addArrangedSubview(topStackView)
        rootStackView.addArrangedSubview(bottomStackView)
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func fnMainStackViewConstrains() {
        rootStackView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        rootStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        rootStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        rootStackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    private func fnTopStackView() {
        topStackView.addArrangedSubview(pitonView)
        topStackView.addArrangedSubview(dragonView)
        pitonView.translatesAutoresizingMaskIntoConstraints = false
        dragonView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func fnBottomStackView() {
        bottomStackView.addArrangedSubview(monkeyView)
        bottomStackView.addArrangedSubview(heartView)
        monkeyView.translatesAutoresizingMaskIntoConstraints = false
        heartView.translatesAutoresizingMaskIntoConstraints = false
    }

}
