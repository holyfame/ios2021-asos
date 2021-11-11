//
//  HomeView.swift
//  Asos
//
//  Created by Holyfame on 11.11.2021.
//

import UIKit

class HomeView: UIView {
    
    private let saleBlock: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        return view
    } ()

    private let headerLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "Today's plans"
        return label
    } ()
    
    private let firstPlanSwitcher: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = .systemBlue
        return switcher
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addSubviews() {
        [
            saleBlock,
            headerLabel,
            firstPlanSwitcher
        ].forEach {
            self.addSubview($0)
        }

        self.subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    override func updateConstraints() {
        saleBlock.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30).isActive = true
        saleBlock.topAnchor.constraint(equalTo: self.topAnchor, constant: 200).isActive = true

        headerLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        
        firstPlanSwitcher.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 100).isActive = true
        firstPlanSwitcher.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24).isActive = true

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
