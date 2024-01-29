//
//  MealDataModel.swift
//  MealDBProject
//
//  Created by Vaishnavi Ankam on 01/28/24.
//

import Foundation

struct MealData: Decodable, Hashable {
    let meals: [[String: String?]]
}

struct Recipie {
    var ingredients: [Ingredient]
}

struct Ingredient: Hashable {
    let ingredient: String
    let measure: String
}

struct Detail {
    var detalles: [Detalles]
}

struct Detalles: Hashable {
     let meal: String
     let instructions: String
}

