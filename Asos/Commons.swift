//
//  Commons.swift
//  Asos
//
//  Created by Holyfame on 17.11.2021.
//

import UIKit

let CONTENT_VIEW_HEIGHT: CGFloat = 100

struct ClothesDataModel {
    let imageName: String
    let price: String
    let description: String
}

struct GlobalVariables {
    static var basketCellsData : [ClothesDataModel] = [ClothesDataModel]()
}
