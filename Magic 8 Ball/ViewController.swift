//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
 
import UIKit
 
class ViewController: UIViewController {
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
        tittleApp.text = " Profille Settings"
        tittleApp.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        tittleApp.font = UIFont(name: "SFProDisplay-Bold", size: 32)
        tittleApp.font = tittleApp.font.withSize(38)
 
        return tittleApp
    }()
 
    /*
     private lazy var profileSettings: UILabel = {
         let profilesetting = UILabel()
         profilesetting.translatesAutoresizingMaskIntoConstraints = false
         profilesetting.text = " Profille Settings"
         profilesetting.textColor = UIColor(red: 0.22, green: 0.22, blue: 0.22, alpha: 1)
         profilesetting.font = UIFont(name: "SFProDisplay-Bold", size: 32)
         profilesetting.font = profilesetting.font.withSize(38)
 
         return profilesetting
     }()
     */
    override func viewDidLoad() {
        super.viewDidLoad()
 
        view.addSubview(backgroundImage)
        view.addSubview(titleStack)
        titleStack.addArrangedSubview(tittleApp)
 
 
        backgroundConstraints()
        titleConstraints()
    }
 
 
    func backgroundConstraints() {
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
 
    func titleConstraints() {
        titleStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        titleStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
    }
 
 
}
