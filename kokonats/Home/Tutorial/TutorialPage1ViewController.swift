//
//  TutorialPage1ViewController.swift
//  kokonats
//
//  Created by George on 2022-05-03.
//

import Foundation
import UIKit

class TutorialPage1ViewController: UIViewController {
    override func viewDidLoad() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        let imageView = UIImageView()
        view.addSubview(imageView)
        imageView.image = UIImage(named: "tutorial_bg_1.png")
        imageView.frame = CGRect(x: 0 , y: 0, width: self.view.frame.width * 0.8, height: self.view.frame.height * 0.7)
        imageView.backgroundColor = UIColor.white
        imageView.layer.cornerRadius = 20
        imageView.layer.borderWidth = 0.1
        imageView.layer.borderColor = UIColor.gray.cgColor
        
        let iconView = UIImageView()
        view.addSubview(iconView)
        iconView.image = UIImage(named: "energy_icon.png")?.scale(to: CGSize(width: 40, height: 80))
        iconView.activeConstraints(to: view, directions: [.centerX, .top(.top, 60)])
        
        let energyView = UIImageView()
        view.addSubview(energyView)
        energyView.image = UIImage(named: "tutorial_energy.png")
        energyView.activeConstraints(to: iconView, directions: [.centerX, .top(.bottom, 30)])
        
        let contentView = UILabel.formatedLabel(size: 20, text: "tutorial_content_1".localized, type: .bold, textAlignment: .center)
        view.addSubview(contentView)
        contentView.textColor = .black
        contentView.numberOfLines = 4
        contentView.activeConstraints(to: energyView, directions: [.centerX, .top(.bottom, 30)])
    }
}
