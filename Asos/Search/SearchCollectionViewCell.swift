//
//  SearchCollectionViewCell.swift
//  Asos
//
//  Created by Holyfame on 28.11.2021.
//

import UIKit


struct SearchCellDataModel {
    let imageName: String
}

class SearchCollectionViewCell: UICollectionViewCell {
    
    private let posterImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        return img
    } ()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        contentView.addSubview(posterImageView)
        self.contentView.subviews.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    func update(dataModel: SearchCellDataModel) {
        posterImageView.image = UIImage(named: dataModel.imageName)
    }
    
    let myConstant: CGFloat = 20
    func setupConstraints() {
        //self.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        contentView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        posterImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        posterImageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        posterImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: myConstant).isActive = true
        posterImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: myConstant).isActive = true

       
        super.updateConstraints()
    }
    
}
