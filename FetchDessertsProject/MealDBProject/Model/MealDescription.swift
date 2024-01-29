//
//  MealDescription.swift
//  MealDBProject
//
//  Created by Vaishnavi Ankam on 01/28/24.
//

import Foundation


struct Meals: Codable, Identifiable, Hashable {
    let id = UUID()
    let strMeal: String
    let strCategory: String
    let strInstructions: String
    let strMealThumb: String
    let ingredients: [IIngredient]
}

extension Meals {
    static let ingredientTest: [IIngredient]?  =
    [
        IIngredient(name: "Milk", measure: "200ml"),
        IIngredient(name: "Oil", measure: "60ml"),
        IIngredient(name: "Eggs", measure: "2"),
        IIngredient(name: "Flour", measure: "1600g"),
        IIngredient(name: "Baking Powder", measure: "3 tsp"),
        IIngredient(name: "Salt", measure: "1/2 tsp"),
        IIngredient(name: "Unsalted Butter", measure: "25g"),
        IIngredient(name: "Sugar", measure: "45g"),
        IIngredient(name: "Peanut Butter", measure: "3 tbs")
    ]
}

extension Meals {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let mealDict = try container.decode([String: String?].self)
        var index = 1
        var ingredientss: [IIngredient] = []
        while let ingredient = mealDict["strIngredient\(index)"] as? String,
              let measure = mealDict["strMeasure\(index)"] as? String,
              !ingredient.isEmpty,
              !measure.isEmpty {
            ingredientss.append(.init(name: ingredient, measure: measure))
            index += 1
        }
            self.ingredients = ingredientss
        
            strMeal = mealDict["strMeal"] as? String ?? ""
            strCategory = mealDict["strCategory"] as? String ?? ""
            strInstructions = mealDict["strInstructions"] as? String ?? ""
            strMealThumb = mealDict["strMealThumb"] as? String ?? ""
            
        }
    }



struct IIngredient: Codable, Hashable {
    let name: String
    let measure: String
}


struct MealsResponse: Codable, Hashable {
    let meals: [Meals]
}



