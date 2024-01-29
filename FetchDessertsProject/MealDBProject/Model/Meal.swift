//
//  Meal.swift
//  MealDBProject
//
//  Created by Vaishnavi Ankam on 01/28/24.
//

import Foundation

struct Categories: Codable, Hashable {
    var strMeal: String
    var strMealThumb: URL?
    var idMeal: String
    
}
extension Categories {
    static let categoryDescriptionTest = Categories(strMeal: "Apam balik", strMealThumb: URL(string: "https://www.themealdb.com//images//media//meals//adxcbq1619787919.jpg")!, idMeal: "53049")
}


struct CategoryResponse: Codable, Hashable{
    let mealsCategory: [Categories]
    
    enum CodingKeys: String, CodingKey {
        case mealsCategory = "meals"
    }
    
}

