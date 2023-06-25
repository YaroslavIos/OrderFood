//
//  ButtonCollectionViewCell.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 25.6.2023.
//

import UIKit

class IndicatorCollectionViewCell: UICollectionViewCell {
    static let reuseID = "IndicatorCollectionViewCell"
    
    let firstIndicator: UILabel = {
        let indicatorView = UILabel()
        indicatorView.textAlignment = .center
        indicatorView.textColor = UIColor(red: 0.99, green: 0.23, blue: 0.41, alpha: 0.4)
        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        return indicatorView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(firstIndicator)
        
        firstIndicator.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        firstIndicator.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        firstIndicator.topAnchor.constraint(equalTo: topAnchor).isActive = true
        firstIndicator.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
