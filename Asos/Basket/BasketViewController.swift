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

class BasketViewController: UITableViewController, BasketButtonListening {
    
    private var basketView = BasketView()
    
    private var cellsDada : [ClothesDataModel] = [ClothesDataModel]()
    
    override func loadView() {
        super.loadView()
        
        // для обработки нажатия кнопок в BasketView
        basketView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (cellsDada.isEmpty) {
            return
        }
        
        tableView.register(FavouritesTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
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
            view = tableView
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        GlobalVariables.basketCellsData = [ClothesDataModel]()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsDada.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! FavouritesTableViewCell
        
        cell.update(dataModel: cellsDada[indexPath.row])

        return cell
    }
    
    func searchButtonDidTap() {
        self.tabBarController?.selectedIndex = 1
    }
    
    func favButtonDidTap() {
        self.tabBarController?.selectedIndex = 3
    }

}
