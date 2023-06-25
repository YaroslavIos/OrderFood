//
//  BannerImage.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 24.6.2023.
//

import UIKit

struct BannerImage {
    var image: UIImage
    
    static func getImage() -> [BannerImage] {
        let firstBanner = BannerImage(image: UIImage(named: "FirstBanner")!)
        let secondBanner = BannerImage(image: UIImage(named: "FirstBanner")!)
        
        return [firstBanner, secondBanner]
    }
}


