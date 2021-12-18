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

class BasketViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,BasketButtonListening {
    
    private var basketView = BasketView()
    
    private var cellsDada : [ClothesDataModel] = [ClothesDataModel]()
    
    private var tableView: UITableView!
    
    override func loadView() {
        super.loadView()
        
        // для обработки нажатия кнопок в BasketView
        basketView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: CGRect(x: 0, y: 84, width: view.bounds.width, height: view.bounds.height))
        tableView.dataSource = self
        tableView.delegate = self
        if (cellsDada.isEmpty) {
            //return
        }
        tableView.register(FavouritesTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }
    
    func setNavigationBar() {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 40, width: screenSize.width, height: 0))
        let navItem = UINavigationItem(title: "КОРЗИНА")
        navBar.backgroundColor = .white
        navBar.tintColor = .white
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
    }

    @objc func done() { // remove @objc for Swift 3

    }
    
    @objc private func clearButtonTap() {
        GlobalVariables.basketCellsData = [ClothesDataModel]()
        self.viewWillDisappear(true)
        self.viewDidDisappear(true)
        self.viewWillAppear(true)
    }
    
    // показываем разные view, если корзина пустая / полная
    override func viewWillAppear(_ animated: Bool) {
        self.cellsDada = GlobalVariables.basketCellsData
        
        if (cellsDada.isEmpty) {
            view = basketView
        } else {
            view = UIView(frame: view.frame)
            view.addSubview(tableView)
        }
        setNavigationBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        GlobalVariables.basketCellsData = [ClothesDataModel]()
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsDada.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
                as! FavouritesTableViewCell? else {
            return UITableViewCell()
        }
        
        cell.update(dataModel: cellsDada[indexPath.row], false)

        return cell
    }
    
    func searchButtonDidTap() {
        self.tabBarController?.selectedIndex = 1
    }
    
    func favButtonDidTap() {
        self.tabBarController?.selectedIndex = 3
    }

}
