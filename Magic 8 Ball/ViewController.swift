//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
 
import UIKit
 
class ViewController: UIViewController {
    
    let arrayBalls = [UIImage(imageLiteralResourceName: "ball1"),
                      UIImage(imageLiteralResourceName: "ball2"),
                      UIImage(imageLiteralResourceName: "ball3"),
                      UIImage(imageLiteralResourceName: "ball4"),
                      UIImage(imageLiteralResourceName: "ball5")]
    
    
    private lazy var backgroundImage: UIImageView = {
        var imageBackground = UIImageView()
        imageBackground.translatesAutoresizingMaskIntoConstraints = false
        imageBackground.backgroundColor = .blue
 
        return imageBackground
    }()
 
    private lazy var titleStack: UIStackView = {
        var stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
 
        return stack
    }()
    private lazy var tittleApp: UILabel = {
        let tittleApp = UILabel()
        tittleApp.translatesAutoresizingMaskIntoConstraints = false
        tittleApp.text = "Ask Me Anything"
        tittleApp.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        tittleApp.font = UIFont(name: "SFProDisplay-Bold", size: 32)
        tittleApp.font = tittleApp.font.withSize(38)
 
        return tittleApp
    }()
    
    private lazy var imageStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
     private lazy var imageBall: UIImageView = {
         let imageBall = UIImageView()
         imageBall.translatesAutoresizingMaskIntoConstraints = false
         imageBall.image = UIImage(named: "ball1")
         imageBall.contentMode = UIView.ContentMode.scaleAspectFill
 
         return imageBall
     }()
    
    private lazy var askButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button.setTitle("Ask", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 0.902, green: 0.902, blue: 0.902, alpha: 1).cgColor
        button.addTarget(self, action: #selector(toAsk), for: .touchUpInside)
        
        return button
    }()
    
    @objc func toAsk() {
        print("La pergunta??")
        imageBall.image = arrayBalls[Int.random(in: 0...4)]
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
 
        view.addSubview(backgroundImage)
        view.addSubview(titleStack)
        titleStack.addArrangedSubview(tittleApp)
        
        view.addSubview(imageStack)
        imageStack.addArrangedSubview(imageBall)
        
        view.addSubview(askButton)
 
 
        backgroundConstraints()
        titleConstraints()
        imageBallConstraints()
        askButtonConstraints()
    }
 
 
    func backgroundConstraints() {
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
 
    func titleConstraints() {
        titleStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        titleStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func imageBallConstraints() {
        imageStack.topAnchor.constraint(equalTo: titleStack.bottomAnchor, constant: 100).isActive = true
        imageStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
 
    func askButtonConstraints() {
        askButton.topAnchor.constraint(equalTo: imageBall.bottomAnchor, constant: 50).isActive = true
        askButton.widthAnchor.constraint(equalToConstant: 79).isActive = true
        askButton.heightAnchor.constraint(equalToConstant: 37).isActive = true
//        askButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        askButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
 
}
