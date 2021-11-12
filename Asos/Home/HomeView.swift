//
//  HomeView.swift
//  Asos
//
//  Created by Holyfame on 11.11.2021.
//

import UIKit

class HomeView: UIView {
    
    private let saleBlockView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        return view
    } ()
    
    private let twoGirlsImageView: UIImageView = {
        let image = UIImage(named: "homeTwoGirls")
        let view = UIImageView(image: image!)
        return view
    } ()
    
    private let gangImageView: UIImageView = {
        let image = UIImage(named: "homeGang")
        let view = UIImageView(image: image!)
        return view
    } ()

    
    private let searchBar: UISearchBar = UISearchBar()

    private let headerLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "Today's plans"
        return label
    } ()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubviews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        [
            headerLabel,
            searchBar,
            saleBlockView,
            twoGirlsImageView,
            gangImageView
        ].forEach {
            self.addSubview($0)
        }
        
        self.subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    private func setupConstraints() {
        
        headerLabel.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        
        searchBar.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 10).isActive = true
        searchBar.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        searchBar.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        saleBlockView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20).isActive = true
        saleBlockView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        saleBlockView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        saleBlockView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        twoGirlsImageView.topAnchor.constraint(equalTo: saleBlockView.bottomAnchor, constant: 20).isActive = true
        twoGirlsImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        twoGirlsImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        gangImageView.topAnchor.constraint(equalTo: twoGirlsImageView.bottomAnchor, constant: 20).isActive = true
        gangImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        gangImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        super.updateConstraints()

    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
