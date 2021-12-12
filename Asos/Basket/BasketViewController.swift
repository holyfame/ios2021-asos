//
//  BasketViewController.swift
//  Asos
//
//  Created by Holyfame on 12.12.2021.
//

import UIKit

class BasketViewController: UIViewController {
    
    private let basketView = BasketView()
    
    override func loadView() {
        view = basketView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Text Caps
        let capsText : UILabel = {
            let buttonX = 40
            let buttonY = 280
            let buttonWidth = 300
            let buttonHeight = 60
            let label = UILabel(frame: CGRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight))
                label.textAlignment = .center
                label.text = "ТВОЯ КОРЗИНА ПУСТА"
            label.font = UIFont.boldSystemFont(ofSize: 16)
            return label
        } ()
        
        // Text
        let emptyText : UILabel = {
            let buttonX = 40
            let buttonY = 360
            let buttonWidth = 300
            let buttonHeight = 200
            let label = UILabel(frame: CGRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight))
                label.textAlignment = .center
                label.text = "Товары будут находиться в корзине в течение 60 минут. Далее они будут перемещены в избранное"
                label.numberOfLines = 0
                label.lineBreakMode = .byWordWrapping
                label.frame.size.width = 300
                label.sizeToFit()
            return label
        } ()
        
        
        // Button to Favourites
        let favButton : UIButton = {
            let buttonX = 40
            let buttonY = 460
            let buttonWidth = 300
            let buttonHeight = 60

            let button = UIButton(type: .system)
            button.setTitle("ПЕРЕЙТИ В ИЗБРАННОЕ", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .black
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            return button
        } ()
        
        // Button to Search
        let searchButton : UIButton = {
            let buttonX = 40
            let buttonY = 540
            let buttonWidth = 300
            let buttonHeight = 60

            let button = UIButton(type: .system)
            button.setTitle("ПРОДОЛЖИТЬ ПОКУПКИ", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .white
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonWidth, height: buttonHeight)
            button.layer.borderWidth = 4
            button.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.8)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            return button
        } ()
        
        favButton.addTarget(self, action: #selector(favButtonTapped), for: .touchUpInside)
        searchButton.addTarget(self, action: #selector(searchButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(capsText)
        self.view.addSubview(emptyText)
        self.view.addSubview(favButton)
        self.view.addSubview(searchButton)
    }
    
    @objc func favButtonTapped(sender: UIButton!) {
        self.tabBarController?.selectedIndex = 3
    }
    
    @objc func searchButtonTapped(sender: UIButton!) {
        self.tabBarController?.selectedIndex = 1
    }
}
