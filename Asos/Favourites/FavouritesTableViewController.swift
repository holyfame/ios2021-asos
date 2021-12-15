//
//  FavouritesTableViewController.swift
//  Asos
//
//  Created by Holyfame on 12.11.2021.
//

import UIKit

class FavouritesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var cellsDada : [ClothesDataModel] = [ClothesDataModel]()
    var _tableView: UITableView!
    
    override func loadView() {
        
        super.loadView()
        let scrollViewFrame = CGRect(x: 0, y: 84, width: view.bounds.width, height: view.bounds.height)
        _tableView = UITableView(frame: scrollViewFrame)
       //setNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar()
        
        view.addSubview(_tableView)
        
        _tableView.delegate = self
        _tableView.dataSource = self

        view.backgroundColor = .white
        _tableView.backgroundColor = .white
        
        _tableView.register(FavouritesTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        
        cellsDada.append(ClothesDataModel(
            imageName: "Taggart",
            price: "1 004 руб.",
            description: "Футболка белая с принтом"
        ))
        
        cellsDada.append(ClothesDataModel(
            imageName: "Rearden",
            price: "1 310 руб.",
            description: "Футболка мужская"
        ))
        cellsDada.append(ClothesDataModel(
            imageName: "DAnconia",
            price: "1 146 руб.",
            description: "Футболка hot"
        ))
        
        cellsDada.append(ClothesDataModel(
            imageName: "Danneskjold",
            price: "1 239 руб.",
            description: "Футболка пиратская"
        ))
        cellsDada.append(ClothesDataModel(
            imageName: "Fountainhead",
            price: "1 009 руб.",
            description: "Футболка вдохновляющая"
        ))
        
        cellsDada.append(ClothesDataModel(
            imageName: "Wyatt",
            price: "1 146 руб.",
            description: "Серая футболка"
        ))
        
        cellsDada.append(ClothesDataModel(
            imageName: "Roark",
            price: "1 146 руб.",
            description: "Футболка архитектурная"
        ))
        
    
    }
    
    func setConstraints() {
        
        _tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        _tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        _tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        _tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
    func setNavigationBar() {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 40, width: screenSize.width, height: 0))
        let navItem = UINavigationItem(title: "ИЗБРАННОЕ")
        navBar.backgroundColor = .white
        navBar.tintColor = .white
        navBar.setItems([navItem], animated: false)
        
        self.view.addSubview(navBar)
    }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARk: - Table view data source

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsDada.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! FavouritesTableViewCell
        
        cell.update(dataModel: cellsDada[indexPath.row], true)

        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
