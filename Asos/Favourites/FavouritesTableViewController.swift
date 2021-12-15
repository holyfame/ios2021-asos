//
//  FavouritesTableViewController.swift
//  Asos
//
//  Created by Holyfame on 12.11.2021.
//

import UIKit

class FavouritesTableViewController: UITableViewController {

    var cellsDada : [ClothesDataModel] = [ClothesDataModel]()
    
//    private let emptyView = UIView()
//    private let condition = true
//
//    override func loadView() {
//        if (condition) {
//            view = emptyView
//            view.backgroundColor = .white
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if (condition) {
//            return
//        }

        
        tableView.register(FavouritesTableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
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
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARk: - Table view data source

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsDada.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! FavouritesTableViewCell
        
        cell.update(dataModel: cellsDada[indexPath.row])

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
