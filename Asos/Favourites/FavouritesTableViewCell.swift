//
//  FavouritesTableViewCell.swift
//  Asos
//
//  Created by Holyfame on 12.11.2021.
//

import UIKit


class FavouritesTableViewCell: UITableViewCell {
    
    private var dataModel = ClothesDataModel(imageName: "", price: "", description: "")
    
    private var isBuyable: Bool = true
    
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
    
    private let descriptionLabel : UITextView = {
        let txtView = UITextView()
        txtView.textColor = .black
        txtView.font = UIFont.boldSystemFont(ofSize: 14)
        txtView.textAlignment = .left
        txtView.isEditable = false
        return txtView
    } ()
    
    private let buyButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("В КОРЗИНУ", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.setTitleShadowColor(.black, for: .normal)
        btn.isHidden = false
        btn.backgroundColor = .white
        btn.layer.borderWidth = 4
        btn.layer.cornerRadius = 0
        btn.layer.borderColor = CGColor(red: 0.06, green: 0.5, blue: 0.1, alpha: 0.8)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        btn.addTarget(self, action: #selector(buyButtonTap), for: .touchUpInside)
        return btn
    } ()
    
    @objc private func buyButtonTap() {
        GlobalVariables.basketCellsData.append(self.dataModel)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.isUserInteractionEnabled = true
        addSubviews()
        setupConstraints()
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        contentView.addSubview(posterImageView)
        contentView.addSubview(priceLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(buyButton)
        self.contentView.subviews.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    
    
    func update(dataModel: ClothesDataModel, _ canBuy: Bool) {
        self.dataModel = dataModel
        posterImageView.image = UIImage(named: dataModel.imageName)
        priceLabel.text = dataModel.price
        descriptionLabel.text = dataModel.description
        isBuyable = canBuy
        buyButton.isEnabled = canBuy
        buyButton.isHidden = !canBuy
    }
    
    let myConstant: CGFloat = 20
    func setupConstraints() {
        //self.heightAnchor.constraint(equalToConstant: 200).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        posterImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        posterImageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        posterImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: myConstant).isActive = true
        posterImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: myConstant).isActive = true
//        posterImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -myConstant).isActive = true
        //posterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: myConstant0).isActive = true
        
        priceLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: myConstant).isActive = true
        priceLabel.leftAnchor.constraint(equalTo: posterImageView.rightAnchor, constant: myConstant).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: myConstant).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: posterImageView.rightAnchor, constant: myConstant).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -myConstant).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: buyButton.topAnchor, constant: -myConstant).isActive = true
        //descriptionLabel.heightAnchor.constraint(equalToConstant: 3*myConstant).isActive = true
        
        //buyButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: myConstant).isActive = true
        buyButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -myConstant).isActive = true
        buyButton.leftAnchor.constraint(equalTo: posterImageView.rightAnchor, constant: myConstant).isActive = true
        buyButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -myConstant).isActive = true
        //buyButton.widthAnchor.constraint(equalToConstant: 12).isActive = true
        //buyButton.heightAnchor.constraint(equalToConstant: 160).isActive = true
       
        super.updateConstraints()
    }

}
