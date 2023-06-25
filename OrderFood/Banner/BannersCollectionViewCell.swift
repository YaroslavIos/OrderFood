//
//  BannerCollectionViewCell.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 24.6.2023.
//

import UIKit

class BannersCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "BannerCollectionViewCell"
    
    let firstBannerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(firstBannerImage)
        
        firstBannerImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        firstBannerImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        firstBannerImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        firstBannerImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
