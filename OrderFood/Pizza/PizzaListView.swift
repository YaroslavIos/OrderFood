//
//  PizzaTableViewController.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 25.6.2023.
//

import UIKit

class PizzaListView: UITableView, UITableViewDelegate, UITableViewDataSource {

    private var pizza: [Pizza] = Pizza.getPizza()
    
    init() {
        
        super.init(frame: .zero, style: .insetGrouped)
        
        delegate = self
        dataSource = self
        register(PizzaCell.self, forCellReuseIdentifier: "pizzaCell")
        translatesAutoresizingMaskIntoConstraints = false
        rowHeight = 180
        backgroundColor = .white
        layer.cornerRadius = 16
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizza.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pizzaCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let pizzaDetail = pizza[indexPath.row]
        
        content.image = UIImage(named: pizzaDetail.image)
        
        content.text = pizzaDetail.name
        content.textProperties.color = UIColor(red: 0.13, green: 0.16, blue: 0.19, alpha: 1)
        
        content.secondaryText = pizzaDetail.description
        content.secondaryTextProperties.color = UIColor(red: 0.67, green: 0.67, blue: 0.68, alpha: 1)
        
        cell.backgroundColor = .white
        cell.contentConfiguration = content
        return cell
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
