//
//  SearchCollectionViewCell.swift
//  Asos
//
//  Created by Holyfame on 28.11.2021.
//

import UIKit


struct SearchCellDataModel {
    let imageName: String
    let price: String
    let description: String
}

class SearchCollectionViewCell: UICollectionViewCell {
    
    private var dataModel = SearchCellDataModel(imageName: "", price: "", description: "")
    
    private let posterImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        return img
    } ()
    
    private let priceLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    } ()
    
    private let descriptionLabel : UILabel = {
        let txtView = UILabel()
        txtView.textColor = .black
        txtView.font = UIFont.boldSystemFont(ofSize: 14)
        txtView.textAlignment = .left
        txtView.numberOfLines = 0
        txtView.lineBreakMode = .byWordWrapping

        return txtView
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
        contentView.addSubview(priceLabel)
        contentView.addSubview(descriptionLabel)
        self.contentView.subviews.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    func update(dataModel: SearchCellDataModel) {
        self.dataModel = dataModel
        posterImageView.image = UIImage(named: dataModel.imageName)
        priceLabel.text = dataModel.price
        descriptionLabel.text = dataModel.description    }
    
    let myConstant: CGFloat = 20
    func setupConstraints() {
       [
        posterImageView.heightAnchor.constraint(equalToConstant: 160),
        posterImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: myConstant*3),
        posterImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
        posterImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
        //posterImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: myConstant).isActive = true
        
        priceLabel.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: myConstant),
        priceLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: myConstant),
        priceLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -myConstant),
        
        descriptionLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: myConstant),
        descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: myConstant),
        descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -myConstant),
       ].forEach{$0.isActive = true}
        super.updateConstraints()
    }
    
}
