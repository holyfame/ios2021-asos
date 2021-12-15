//
//  BasketViewController.swift
//  Asos
//
//  Created by Holyfame on 12.12.2021.
//

import UIKit

protocol BasketButtonListening: AnyObject {
    func searchButtonDidTap()
    func favButtonDidTap()
}

class BasketViewController: UIViewController, BasketButtonListening {
    
    func searchButtonDidTap() {
        self.tabBarController?.selectedIndex = 1
    }
    
    func favButtonDidTap() {
        self.tabBarController?.selectedIndex = 3
    }
    
    private let basketView = BasketView()
    
    override func loadView() {
        basketView.delegate = self
        view = basketView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
