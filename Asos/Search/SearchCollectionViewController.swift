//
//  SearchCollectionViewController.swift
//  Asos
//
//  Created by Holyfame on 28.11.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class SearchCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private var cellsDada : [SearchCellDataModel] = [SearchCellDataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellsDada.append(SearchCellDataModel(
            imageName: "Taggart"
        ))
        
        cellsDada.append(SearchCellDataModel(
            imageName: "Rearden"
        ))
        cellsDada.append(SearchCellDataModel(
            imageName: "DAnconia"
        ))
        
        cellsDada.append(SearchCellDataModel(
            imageName: "Danneskjold"
        ))
        
        self.collectionView.backgroundColor = .white
        self.collectionView.delegate = self
        self.collectionView.alwaysBounceVertical = true
        
        self.collectionView!.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    
    }

    // MARK: UICollectionViewDataSource

    
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
        cell.update(dataModel: cellsDada[cellIndex])
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 100, height: 180)
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
