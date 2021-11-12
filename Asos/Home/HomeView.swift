//
//  HomeView.swift
//  Asos
//
//  Created by Holyfame on 11.11.2021.
//

import UIKit

class HomeView: UIView {
    
    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isScrollEnabled = true
        return view
    } ()
    
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
        self.addSubview(scrollView)
        addSubviewsToScrollView()
    }
    
    private func addSubviewsToScrollView() {
        [
            headerLabel,
            searchBar,
            saleBlockView,
            twoGirlsImageView,
            gangImageView
        ].forEach {
            scrollView.addSubview($0)
        }
        
        scrollView.subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    private func setupConstraints() {
        
        scrollView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 1000).isActive = true

        headerLabel.topAnchor.constraint(equalTo: scrollView.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        
        searchBar.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 10).isActive = true
        searchBar.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        searchBar.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -20).isActive = true
        
        
        saleBlockView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20).isActive = true
        saleBlockView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        saleBlockView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -20).isActive = true
        saleBlockView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        twoGirlsImageView.topAnchor.constraint(equalTo: saleBlockView.bottomAnchor, constant: 20).isActive = true
        twoGirlsImageView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        twoGirlsImageView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -20).isActive = true
        
        
        gangImageView.topAnchor.constraint(equalTo: twoGirlsImageView.bottomAnchor, constant: 20).isActive = true
        gangImageView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 20).isActive = true
        gangImageView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -20).isActive = true
        
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
