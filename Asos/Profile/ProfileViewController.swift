//
//  ProfileViewController.swift
//  Asos
//
//  Created by Holyfame on 13.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userCircleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        drawUserCircle()
    }
    
    private func drawUserCircle() {
            userCircleView.backgroundColor = UIColor(white: 1, alpha: 0)
            
            let circlePath = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: CGFloat(50), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
            
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = circlePath.cgPath
            shapeLayer.fillColor = UIColor.lightGray.cgColor
            
            userCircleView.layer.insertSublayer(shapeLayer, at: 0)
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
