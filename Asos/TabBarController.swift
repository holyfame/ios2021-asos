//
//  TabBarController.swift
//  Asos
//
//  Created by Holyfame on 11.11.2021.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        self.setViewControllers(
            [
                homeViewController(),
                favouritesViewController(),
                profileViewController()
            ],
            animated: true
        )
    }
    
    private func homeViewController() -> UIViewController {
        let controller = HomeViewController()
        controller.tabBarItem.title = "Home"
        controller.tabBarItem.image = UIImage(systemName: "house.fill")
        return controller
    }
    
    private func profileViewController() -> UIViewController {
        let controller = ProfileViewController()
        controller.tabBarItem.title = "Profile"
        controller.tabBarItem.image = UIImage(systemName: "person.fill")
        return controller
    }
    
    private func favouritesViewController() -> UITableViewController {
        let controller = FavouritesTableViewController()
        controller.tabBarItem.title = "Favourites"
        controller.tabBarItem.image = UIImage(systemName: "heart.fill")
        return controller
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
