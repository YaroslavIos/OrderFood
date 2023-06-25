//
//  ButtonsCollectionView.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 25.6.2023.
//

import UIKit

class IndicatorCollectionView: UICollectionView, UICollectionViewDelegate,
    UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [IndicatorTitle]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        delegate = self
        dataSource = self
        register(
            IndicatorCollectionViewCell.self,
            forCellWithReuseIdentifier: IndicatorCollectionViewCell.reuseID
        )
        backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.98, alpha: 1)
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = 8
        
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    func set(cells: [IndicatorTitle]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: IndicatorCollectionViewCell.reuseID,
        for: indexPath) as! IndicatorCollectionViewCell
        cell.firstIndicator.text = cells[indexPath.row].title
        cell.backgroundColor = .clear
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor(red: 0.99, green: 0.23, blue: 0.41, alpha: 0.4).cgColor
        cell.layer.cornerRadius = 12
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 88, height: 32)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
