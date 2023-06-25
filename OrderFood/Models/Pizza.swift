//
//  Pizza.swift
//  OrderFood
//
//  Created by Ярослав Любиченко on 24.6.2023.
//

import Foundation

struct Pizza: Decodable {
    let name: String
    let description: String
    let image: String
    let price: String
    
    static func getPizza() -> [Pizza] {
        [
            Pizza(
                name: "Ветчина и грибы",
                description: "Ветчина, шампиньоны, увеличенная порция моцареллы, томатный соус",
                image: "ветчина_грибы",
                price: "от 345 р"
            ),
            Pizza(
                name: "Баварские колбаски",
                description: "Баварские колбаски, ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус",
                image: "баварские колбаски",
                price: "от 345 р"
            ),
            Pizza(
                name: "Нежный лосось",
                description: "Лолось, томаты черри, моцарелла, соус песто",
                image: "нежный лосось",
                price: "от 345 р"
            ),
            Pizza(
                name: "Баварские колбаски",
                description: "Баварские колбаски, ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус",
                image: "баварские колбаски",
                price: "от 345 р"
            ),
            Pizza(
                name: "Ветчина и грибы",
                description: "Ветчина, шампиньоны, увеличенная порция моцареллы, томатный соус",
                image: "ветчина_грибы",
                price: "от 345 р"
            ),
            Pizza(
                name: "Нежный лосось",
                description: "Лолось, томаты черри, моцарелла, соус песто",
                image: "нежный лосось",
                price: "от 345 р"
            )
        ]
    }
}
