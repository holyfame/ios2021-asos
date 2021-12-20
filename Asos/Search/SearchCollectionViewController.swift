//
//  SearchCollectionViewController.swift
//  Asos
//
//  Created by Holyfame on 28.11.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class SearchCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private var cellData : [SearchCellDataModel] = [SearchCellDataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellData.append(SearchCellDataModel(
            imageName: "Taggart",
            price: "1 004 руб.",
            description: "Футболка белая с принтом"
        ))
        
        cellData.append(SearchCellDataModel(
            imageName: "Rearden",
            price: "1 310 руб.",
            description: "Футболка мужская"
        ))

        cellData.append(SearchCellDataModel(
            imageName: "DAnconia",
            price: "1 146 руб.",
            description: "Футболка hot"
        ))
        
        cellData.append(SearchCellDataModel(
            imageName: "Danneskjold",
            price: "1 239 руб.",
            description: "Футболка пиратская"
        ))
        
        self.collectionView.backgroundColor = .white
        self.collectionView.delegate = self
        self.collectionView.alwaysBounceVertical = true
        
        //self.🗺()
        
        self.collectionView!.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        

    
    }
    override func viewWillAppear(_ animated: Bool) {
        setNavigationBar()
    }

    // MARK: UICollectionViewDataSource

    func setNavigationBar() {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 40, width: screenSize.width, height: 40))
        let navItem = UINavigationItem(title: "ПОИСК")
        navBar.backgroundColor = .white
        navBar.tintColor = .white
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SearchCollectionViewCell
        let cellIndex = indexPath.row * indexPath.count + indexPath.section
        cell.update(dataModel: cellData[cellIndex])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return .init(width: 180, height: 300)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            //For entire screen size
        //let screenSize = UIScreen.main.bounds.divided(atDistance: <#T##CGFloat#>, from: <#T##CGRectEdge#>)
        //return screenSize
        let w:Int = Int(UIScreen.main.bounds.size.width)
        //let h:Int = Int(UIScreen.main.bounds.size.height)
        return .init(width: w/2, height: 300)

            //If you want to fit the size with the size of ViewController use bellow
//            let viewControllerSize = self.view.frame.size
//            return viewControllerSize
//
//            // Even you can set the cell to uicollectionview size
//            let cvRect = collectionView.frame
//            return CGSize(width: cvRect.width, height: cvRect.height)
//

        }
 
    //func 🗺() {
    //    let screenSize: CGRect = UIScreen.main.bounds
    //    let navBar = UINavigationBar(frame: CGRect(x: 0, y: 40, width: screenSize.width, height: 0))
    //    let navItem = UINavigationItem(title: "ПОИСК")
    //    navBar.setItems([navItem], animated: false)
    //    navBar.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
    //    navBar.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
    //    navBar.barTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
    //    self.view.addSubview(navBar)
    //}
//
//    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
//        return false
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
//        return false
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
//
//    }
//

}

