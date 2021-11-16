//
//  HomeView.swift
//  Asos
//
//  Created by Holyfame on 11.11.2021.
//

import UIKit

class HomeContentView: UIView {
    
    // MARK: - content
    
    private let searchBar: UISearchBar = UISearchBar()
    
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
    
    // MARK: - init

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
//        self.frame.size = CGSize(width: frame.size.width, height: frame.size.height)
        
        addSubviews()
        setupConstraints()
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        [
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
    
        let constraints = [
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            searchBar.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            searchBar.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            
            saleBlockView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20),
            saleBlockView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            saleBlockView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            saleBlockView.heightAnchor.constraint(equalToConstant: 100),

            twoGirlsImageView.topAnchor.constraint(equalTo: saleBlockView.bottomAnchor, constant: 20),
            twoGirlsImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            twoGirlsImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),

            gangImageView.topAnchor.constraint(equalTo: twoGirlsImageView.bottomAnchor, constant: 20),
            gangImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            gangImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
