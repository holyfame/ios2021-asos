//
//  FavouritesTableViewCell.swift
//  Asos
//
//  Created by Holyfame on 12.11.2021.
//

import UIKit

class FavouritesTableViewCell: UITableViewCell {
    
    private let posterImage: UIImageView = UIImageView()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Стильная шмотка"
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
        contentView.addSubview(posterImage)
        contentView.addSubview(titleLabel)
        self.contentView.subviews.forEach{ $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    func update(imageName: String) {
        let image = UIImage(named: imageName)
        posterImage.image = image
    }
    
    func setupConstraints() {
        
        posterImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        posterImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        posterImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: posterImage.bottomAnchor, constant: 24).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true

        super.updateConstraints()
    }

}
