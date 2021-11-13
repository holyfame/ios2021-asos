//
//  HomeView.swift
//  Asos
//
//  Created by Holyfame on 11.11.2021.
//

import UIKit

class HomeView: UIView {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = true
        return scrollView
    } ()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
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
        label.text = "Welcome to asos"
        return label
    } ()
    
    
    
    let titleLabel: UILabel = {
           let label = UILabel()
           label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
           label.numberOfLines = 0
           label.sizeToFit()
           label.textColor = UIColor.black
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
       
       let subtitleLabel: UILabel = {
           let label = UILabel()
           label.text = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
           label.numberOfLines = 0
           label.sizeToFit()
           label.textColor = UIColor.black
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
    
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        setupViews()
//        addSubviews()
//        setupConstraints()
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
//        addSubviewsToContainerView()
    }
    
    private func addSubviewsToContainerView() {
        [
//            headerLabel,
//            searchBar,
//            saleBlockView,
//            twoGirlsImageView,
//            gangImageView
        ].forEach {
            contentView.addSubview($0)
        }
        
        contentView.subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    
    
    func setupViews(){
           contentView.addSubview(titleLabel)
           titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
           titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
           titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4).isActive = true
           
           contentView.addSubview(subtitleLabel)
           subtitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
           subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
           subtitleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4).isActive = true
           subtitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
       }
    
    

    private func setupConstraints() {
        
        scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        
//        scrollView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        scrollView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//
//        contentView.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
//        contentView.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
//        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true

//        headerLabel.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 30).isActive = true
//        headerLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
//
//        searchBar.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 10).isActive = true
//        searchBar.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
//        searchBar.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
//
//        saleBlockView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20).isActive = true
//        saleBlockView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
//        saleBlockView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
//        saleBlockView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
//        twoGirlsImageView.topAnchor.constraint(equalTo: saleBlockView.bottomAnchor, constant: 20).isActive = true
//        twoGirlsImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
//        twoGirlsImageView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
//
//        gangImageView.topAnchor.constraint(equalTo: twoGirlsImageView.bottomAnchor, constant: 20).isActive = true
//        gangImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
//        gangImageView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        
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
