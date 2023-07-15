//
//  DataSourceMock.swift
//  ChefDelivery
//
//  Created by Pedro Somensi on 15/07/23.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(
        id: 1,
        name: "Restaurantes",
        image: "hamburguer"
    ),
    OrderType(
        id: 2,
        name: "Mercado",
        image: "mercado"
    ),
    OrderType(
        id: 3,
        name: "Farmácia",
        image: "farmacia"
    ),
    OrderType(
        id: 4,
        name: "Pet",
        image: "petshop"
    ),
    OrderType(
        id: 5,
        name: "Descontos",
        image: "descontos"
    ),
    OrderType(
        id: 6,
        name: "Bebidas",
        image: "bebidas"
    ),
    OrderType(
        id: 7,
        name: "Gourmet",
        image: "gourmet"
    ),
]


let storesMock: [Store] = [
    Store(
        id: 1,
        image: "acai-panda-logo",
        name: "Açai Panda"
    ),
    Store(
        id: 2,
        image: "bakery-logo",
        name: "Padaria Somensi"
    ),
    Store(
        id: 3,
        image: "carbron-logo",
        name: "Carbon"
    ),
    Store(
        id: 4,
        image: "food-court-logo",
        name: "Food Court"
    ),
    Store(
        id: 5,
        image: "monstro-burger-logo",
        name: "Monstro burger"
    ),
]
