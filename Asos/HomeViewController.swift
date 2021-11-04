//
//  HomeViewController.swift
//  Asos
//
//  Created by Holyfame on 04.11.2021.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonDidClick(_ sender: Any) {
        UIView.animate(
            withDuration: 1,
            delay: .zero,
            animations: {
                self.rectangle.backgroundColor = .systemOrange
            }
        )
    }
    
    @IBOutlet weak var rectangle: UIView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
