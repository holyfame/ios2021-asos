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
    
    private var emptyBasketView = BasketView()
    private var fullBasketTableView: UITableView!
    private var fullBasketContentView: UIView!
        
    override func loadView() {
        super.loadView()
        
        // для обработки нажатия кнопок в BasketView
        emptyBasketView.delegate = self
        
        fullBasketContentView = UIView(frame: view.frame)
        fullBasketContentView.isOpaque = true
        fullBasketContentView.backgroundColor = .white
        
        fullBasketTableView = UITableView(frame: CGRect(x: 0, y: 84, width: view.bounds.width, height: view.bounds.height))
        // для отображения ячеек
        fullBasketTableView.delegate = self
        fullBasketTableView.dataSource = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullBasketTableView.register(FavouritesTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        fullBasketContentView.addSubview(fullBasketTableView)
        fullBasketContentView.addSubview(getNavBar())
        
        emptyBasketView.addSubview(getNavBar())
    }
    
    // показываем разные view, если корзина пустая / полная
    override func viewWillAppear(_ animated: Bool) {
        if (GlobalVariables.basketCellsData.isEmpty) {
            view = emptyBasketView
        } else {
            view = fullBasketContentView
            // обновить значения ячеек в корзине
            let _ = [fullBasketTableView .reloadData()]
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        GlobalVariables.basketCellsData = [ClothesDataModel]()
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return GlobalVariables.basketCellsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
                as! FavouritesTableViewCell? else {
            return UITableViewCell()
        }
        
        cell.update(dataModel: GlobalVariables.basketCellsData[indexPath.row], false)

        return cell
    }
    
    func searchButtonDidTap() {
        self.tabBarController?.selectedIndex = 1
    }
    
    func favButtonDidTap() {
        self.tabBarController?.selectedIndex = 3
    }
    
    private func getNavBar() -> UINavigationBar {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 40, width: screenSize.width, height: 0))
        let navItem = UINavigationItem(title: "КОРЗИНА")
        navBar.backgroundColor = .white
        navBar.tintColor = .white
        navBar.setItems([navItem], animated: false)
        return navBar
    }
    
}
