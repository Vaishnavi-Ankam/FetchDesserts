//
//  MealModel.swift
//  MealDBProject
//
//  Created by Vaishnavi Ankam on 01/28/24.
//

import Foundation


struct MealModel: Codable {
    let meals: [MealElement]
}


struct MealElement: Codable, Hashable {
    let strMeal: String
    let strMealThumb: String
    var idMeal: String
}
