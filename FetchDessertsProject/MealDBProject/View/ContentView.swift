//
//  ContentView.swift
//  MealDBProject
//
//  Created by Vaishnavi Ankam on 01/28/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @StateObject var mealViewModel = MealViewModel()
    var meal: Meals
    
    var body: some View {
        ZStack{
            NavigationStack {
                List {
                    ForEach(mealViewModel.mealElementArray, id: \.self){ items in
                        
                        NavigationLink(destination: DessertDetailView(meal: Meals(strMeal: "", strCategory: "", strInstructions: "", strMealThumb: "", ingredients: []), rec: Recipie(ingredients: []), info: items.idMeal)) {
                          
                            HStack(alignment: .top) {
                                VStack(alignment: .leading, spacing: 80) {
                                  
                                    Text(items.strMeal )
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundColor(Color.white)
                                
                                }
                                .padding(.top)
                                .padding(.leading)
                                
                                Spacer()
                                
                                ZStack(alignment: .topTrailing) {
                                    //if let image
                                    WebImage(url: URL(string: items.strMealThumb))
                                        .resizable()
                                        .foregroundColor(.gray)
                                        .cornerRadius(100)
                                        .frame(width: 70, height: 70)
                                }
                           }
                            .frame(width: 270, height: 120)
                            
                        }
                    }
                    
                }.navigationTitle("Desserts List")
                    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            }
            .task {
                await mealViewModel.getData()
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(meal: Meals(strMeal: "", strCategory: "", strInstructions: "", strMealThumb: "", ingredients: []))
    }
}
