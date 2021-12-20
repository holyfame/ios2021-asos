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
    
    private let navBar : UINavigationBar = {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 40, width: screenSize.width, height: 40))
        let navItem = UINavigationItem(title: "ПОИСК")
        navBar.backgroundColor = .white
        navBar.tintColor = .white
        navBar.setItems([navItem], animated: false)
        return navBar
    } ()

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
        
        self.view.backgroundColor = .white
        self.view.addSubview(navBar)
        
        setUpCollectionView()
    }
    
    private func setUpCollectionView() {
        self.collectionView.backgroundColor = .white
        self.collectionView.delegate = self
        self.collectionView.alwaysBounceVertical = true
        
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        self.collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        self.collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        self.collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
                
        self.collectionView!.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    // MARK: UICollectionViewDataSource

    func setNavigationBar() {
        
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w:Int = Int(UIScreen.main.bounds.size.width)
        return .init(width: w/2, height: 300)
    }

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

