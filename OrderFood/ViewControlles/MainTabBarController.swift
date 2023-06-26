//
//  MainTabBarController.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 22.6.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private var isSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().backgroundColor = .white
        createTabBarController()
        setTabBarAppearance()
    }
    
    private func createTabBarController() {
        viewControllers = [
            createVC(
                viewController: MenuViewController(),
                title: "Меню",
                image: UIImage(named: "Menu")
            ),
            createVC(
                viewController: ContactsViewController(),
                title: "Контакты",
                image: UIImage(named: "Contacts")
            ),
            createVC(
                viewController: ProfileViewController(),
                title: "Профиль",
                image: UIImage(systemName: "person.fill")
            ),
            createVC(
                viewController: CartViewController(),
                title: "Корзина",
                image: UIImage(named: "Cart")
            )
        ]
    }
    
    private func createVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
        return viewController
    }
    
    func setTabBarAppearance() {
        tabBar.tintColor = .tabBarItemSelected
        tabBar.unselectedItemTintColor = .tabBarColorNotSelected
    }
}
