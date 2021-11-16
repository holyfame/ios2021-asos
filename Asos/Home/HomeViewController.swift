//
//  HomeViewController.swift
//  Asos
//
//  Created by Holyfame on 04.11.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - views
    
    lazy var headerLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "Welcome to asos"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()

    lazy var scrollView : UIScrollView = {
        let scrollViewFrame = CGRect(x: 0, y: 100, width: view.bounds.width, height: view.bounds.height)
        let scrollView = UIScrollView(frame: scrollViewFrame)
        scrollView.backgroundColor = .white
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 400)
        return scrollView
    } ()
    
    lazy var contentView : UIView = HomeContentView(frame: view.bounds)
    
    // MARK: - load
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        
        view.addSubview(headerLabel)
        headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
