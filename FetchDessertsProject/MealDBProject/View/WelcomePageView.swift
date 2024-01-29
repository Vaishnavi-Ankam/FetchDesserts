//
//  WelcomePageView.swift
//  MealDBProject
//
//  Created by Vaishnavi Ankam on 1/28/24.
//

import SwiftUI

struct WelcomePageView: View {
    @State private var showContentView = false
    var body: some View {
        VStack {
            Spacer()
            Text("Welcome to Fetch IOS Exercise")
                .font(.title)
                .fontWeight(.bold)
                .textCase(.uppercase)
                .multilineTextAlignment(.center)
            

            Image("fetch_rewards_logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100) // Adjust the size as needed
                            .foregroundColor(.red)
                            .padding()

            Text("Get ready to explore amazing desserts!")
                .font(.system(size: 18))
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("App by Vaishnavi Ankam")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .padding(.top, 350)


            
        }
        .padding()
        .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 6, repeats: false) { timer in
                        withAnimation {
                            showContentView = true
                        }
                    }
                }
                .fullScreenCover(isPresented: $showContentView, content: {
                    ContentView(meal: Meals(strMeal: "", strCategory: "", strInstructions: "", strMealThumb: "", ingredients: []))
                })
                .preferredColorScheme(.dark)
        
    }
}

struct WelcomePageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePageView()
    }
}
