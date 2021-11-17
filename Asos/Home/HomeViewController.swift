//
//  HomeViewController.swift
//  Asos
//
//  Created by Holyfame on 04.11.2021.
//

import UIKit

class HomeViewController: UIViewController, UISearchBarDelegate {
    
    // MARK: - Properties
    
    private lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "search"
        searchBar.delegate = self
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    } ()

    private lazy var scrollView : UIScrollView = {
        let scrollViewFrame = CGRect(x: 0, y: CONTENT_VIEW_HEIGHT, width: view.bounds.width, height: view.bounds.height)
        let scrollView = UIScrollView(frame: scrollViewFrame)
        scrollView.backgroundColor = .white
        scrollView.keyboardDismissMode = .onDrag
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 400)
        return scrollView
    } ()
    
    private lazy var contentView : UIView = HomeContentView(frame: view.bounds)
    
    // MARK: - Load view
    
    override func loadView() {
        super.loadView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        view.addSubview(searchBar)
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            searchBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            searchBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10)
        ])
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = nil
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.endEditing(true)
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.tabBarController?.selectedIndex = 1
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
