//
//  Buttons.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 24.6.2023.
//

import UIKit

struct IndicatorTitle {
    var title: String
    
    static func setButtonTitle() -> [IndicatorTitle] {
        let firstTitle = IndicatorTitle(title: "Пицца")
        let secondTitle = IndicatorTitle(title: "Комбо")
        let thirdTitle = IndicatorTitle(title: "Десерты")
        let fourthTitle = IndicatorTitle(title: "Напитки")
        
        return [firstTitle, secondTitle, thirdTitle, fourthTitle]
    }
}
