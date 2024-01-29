//
//  DessertDetailView.swift
//  MealDBProject
//
//  Created by Vaishnavi Ankam on 01/28/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct DessertDetailView: View {
    @StateObject var mealVM = MealViewModel()
    @Environment(\.presentationMode) var presentation
    var mealElementArray: [MealElement] = []
    var meal: Meals
    var rec: Recipie
    
    var info : String
    
    var body: some View {
        ZStack{
            
                 NavigationStack {
                     ScrollView {
                         VStack {
                             VStack{
                                 ForEach(mealVM.mealElementArray, id: \.self){ prod in
                                     if(prod.idMeal == info){
                                         WebImage(url: URL(string: prod.strMealThumb))
                                             .resizable()
                                             .frame(width: 150, height: 150)
                                             .aspectRatio(contentMode: .fit)
                                             .cornerRadius(15)
                                         
                                         
                                             HStack{
                                                 Text("MEAL NAME : ")
                                                     .font(.system(size: 15))
                                                     .fontWeight(.bold)
                                                     .textCase(.uppercase)
                                                     .padding(.top, 20)
                                                 Text(prod.strMeal)
                                                     .padding(.top, 20)
                                             }
                                             
                                         
                                         
                                     }
                                 }
                            }
                             
                             VStack(alignment: .leading){
                                 
                                     HStack{
                                         Text("MEAL ID : ")
                                             .font(.system(size: 15))
                                             .fontWeight(.bold)
                                             .textCase(.uppercase)
                                             .padding(.top, 20)
                                         ForEach(mealVM.mealElementArray, id: \.self){ prod in
                                             if(prod.idMeal == info){
                                                 VStack{
                                                     HStack{
                                                         Text(prod.idMeal)
                                                             .font(.body)
                                                             .foregroundColor(.white.opacity(0.7))
                                                             .padding(.top, 20)
                                                     }
                                                 }
                                             }
                                         }
                                     }
                               
                            
                             }
                             
                             VStack(alignment: .leading){
                                 
                                     HStack{
                                         Text("CATEGORY : ")
                                             .font(.system(size: 15))
                                             .fontWeight(.bold)
                                             .textCase(.uppercase)
                                             .padding(.top, 20)
                                         Text(mealVM.categoryTest)
                                             .font(.system(size: 15))
                                             .textCase(.uppercase)
                                             .padding(.top, 20)
                                     }
                               
                            
                             }
                             
                             
                             
                             VStack(alignment: .leading){
                                 
                                     Text("INSTRUCTIONS : ")
                                         .font(.system(size: 15))
                                         .fontWeight(.bold)
                                         .textCase(.uppercase)
                                         .padding(.top, 20)
                                     HStack{
                                         Text(mealVM.instructionsTest)
                                             .padding(.top, 20)
                                     }
                               
                            
                             }

                             
        
                             VStack(alignment: .leading){
                                     Text("INGREDIENTS : ")
                                         .font(.system(size: 15))
                                         .fontWeight(.bold)
                                         .textCase(.uppercase)
                                         .padding(.top, 20)
                                     
                                     VStack(alignment: .leading){
                                         ForEach(mealVM.ingred, id: \.self) { item in
                                             HStack{
                                                 Text(item.ingredient)
                                                 Text(item.measure)
                                                     .padding(.top, 20)
                                             }
                                             
                                         }
                                     }
                             }
                          
                         }
                         
                     }
                 }
            Spacer()
                 .task {
                     await mealVM.getData()
                     await mealVM.getIngredients(info: info)
                 }
        }
       Spacer()
        
    }
}

struct DessertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DessertDetailView( meal: Meals(strMeal: "", strCategory: "", strInstructions: "", strMealThumb: "", ingredients: []), rec: Recipie(ingredients: []), info: "")
    }
}
