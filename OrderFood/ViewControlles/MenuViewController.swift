//
//  ViewController.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 22.6.2023.
//

import UIKit

class MenuViewController: UIViewController {
    
    private var bannerImages = BannerCollectionView()
    private var indicators = IndicatorCollectionView()
    private var pizzaList = PizzaListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1)
        view.addSubview(bannerImages)
        view.addSubview(indicators)
        view.addSubview(pizzaList)
        
        bannerImages.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        bannerImages.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bannerImages.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bannerImages.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        indicators.topAnchor.constraint(equalTo: bannerImages.bottomAnchor, constant: 24).isActive = true
        indicators.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        indicators.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        indicators.heightAnchor.constraint(equalToConstant: 32).isActive = true
        indicators.widthAnchor.constraint(equalToConstant: 88).isActive = true
        
        pizzaList.topAnchor.constraint(equalTo: indicators.bottomAnchor, constant: 24).isActive = true
        pizzaList.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pizzaList.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pizzaList.heightAnchor.constraint(equalToConstant: 800).isActive = true
        
        bannerImages.set(cells: BannerImage.getImage())
        indicators.set(cells: IndicatorTitle.setButtonTitle())
        
    }
}
