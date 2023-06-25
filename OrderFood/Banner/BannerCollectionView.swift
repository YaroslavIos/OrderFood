//
//  BannerCollectionView.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 24.6.2023.
//

import UIKit

class BannerCollectionView: UICollectionView, UICollectionViewDelegate,
    UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [BannerImage]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        delegate = self
        dataSource = self
        register(
            BannersCollectionViewCell.self,
            forCellWithReuseIdentifier: BannersCollectionViewCell.reuseID
        )
        backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1)
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = 16
        
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    func set(cells: [BannerImage]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: BannersCollectionViewCell.reuseID,
        for: indexPath) as! BannersCollectionViewCell
        cell.firstBannerImage.image = cells[indexPath.row].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 112)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
