//
//  PizzaCell.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 24.6.2023.
//

import UIKit

class PizzaCell: UITableViewCell {
    
    var pizzaImageView = UIImageView()
    var pizzaName = UILabel()
    var pizzaDescription = UILabel()
    var price = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(pizzaImageView)
        addSubview(pizzaName)
        addSubview(pizzaDescription)
        addSubview(price)
        
        setPizzaImageView()
        setPizzaName()
        setPizzaDescription()
        setPriceButton()
        
        setPizzaImageConstrains()
        setPizzaNameConstrains()
        setPizzaDescriptionConstrains()
        setButtonConstrain()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(pizza: Pizza) {
        pizzaImageView.image = UIImage(named: pizza.image)
        pizzaName.text = pizza.name
        pizzaDescription.text = pizza.description
        price.titleLabel?.text = pizza.price
    }
    
    func setPizzaImageView() {
        pizzaImageView.layer.cornerRadius = 10
        pizzaImageView.clipsToBounds = true
    }
    
    func setPizzaName() {
        pizzaName.numberOfLines = 0
        pizzaName.adjustsFontSizeToFitWidth = true
    }
    
    func setPizzaDescription() {
        pizzaDescription.numberOfLines = 0
        pizzaDescription.adjustsFontSizeToFitWidth = true
    }
    
    func setPriceButton() {
        price.configuration = .bordered()
        price.setTitle("от 345 р", for: .normal)
        price.setTitleColor(UIColor(red: 0.99, green: 0.23, blue: 0.41, alpha: 1), for: .normal)
        price.layer.borderWidth = 1
        price.layer.borderColor = .init(red: 0.99, green: 0.23, blue: 0.41, alpha: 1)
        price.layer.cornerRadius = 8
        price.configuration?.baseBackgroundColor = .white
    }
    
    func setPizzaImageConstrains() {
        pizzaImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pizzaImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            pizzaImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            pizzaImageView.heightAnchor.constraint(equalToConstant: 132),
            pizzaImageView.widthAnchor.constraint(equalTo: pizzaImageView.heightAnchor, multiplier: 16/9)
        ])
    }
    
    func setPizzaNameConstrains() {
        pizzaName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pizzaName.centerYAnchor.constraint(equalTo: centerYAnchor),
            pizzaName.leadingAnchor.constraint(equalTo: pizzaImageView.trailingAnchor, constant: 32),
            //pizzaName.heightAnchor.constraint(equalToConstant: 20),
            pizzaName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
        ])
    }
    
    func setPizzaDescriptionConstrains() {
        pizzaDescription.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pizzaDescription.centerYAnchor.constraint(equalTo: centerYAnchor),
            pizzaDescription.leadingAnchor.constraint(equalTo: pizzaImageView.trailingAnchor, constant: 32),
            //pizzaDescription.heightAnchor.constraint(equalToConstant: 48),
            pizzaDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            pizzaDescription.topAnchor.constraint(equalTo: pizzaName.bottomAnchor, constant: 18)
        ])
    }
    
    func setButtonConstrain() {
        price.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            price.topAnchor.constraint(equalTo: pizzaDescription.bottomAnchor, constant: 48),
            price.leadingAnchor.constraint(equalTo: pizzaImageView.trailingAnchor, constant: 116),
            price.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            price.widthAnchor.constraint(equalToConstant: 100),
            price.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}
