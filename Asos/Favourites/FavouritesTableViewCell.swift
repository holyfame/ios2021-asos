//
//  FavouritesTableViewCell.swift
//  Asos
//
//  Created by Holyfame on 12.11.2021.
//

import UIKit

struct FavouritesCellDataModel {
    let imageName: String
    let price: Int = 1000
    let description: String
}

class FavouritesTableViewCell: UITableViewCell {
    
    private let posterImageView: UIImageView = UIImageView()
    
    private let descriptionLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    } ()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setupConstraints()
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        contentView.addSubview(posterImageView)
        contentView.addSubview(descriptionLabel)
        self.contentView.subviews.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    func update(dataModel: FavouritesCellDataModel) {
        posterImageView.image = UIImage(named: dataModel.imageName)
        descriptionLabel.text = dataModel.description
    }
    
    func setupConstraints() {
        
        posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24).isActive = true
        posterImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
//        posterImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: posterImageView.rightAnchor, constant: 24).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true

        super.updateConstraints()
    }

}
