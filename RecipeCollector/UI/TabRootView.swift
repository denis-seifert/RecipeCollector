//
//  TabRootView.swift
//  RecipeCollector
//
//  Created by Denis Seifert on 06.07.21.
//

import SwiftUI

struct TabRootView: View {

    
    //Variables
    @State private var selection = 0

    
    var body: some View {
        ZStack{
        NavigationView{
            Text("")
        }.navigationBarTitle("").navigationBarHidden(true)
    TabView(selection: $selection){
        HomeView()
            
            .tabItem {
                
                    Image(systemName: "house")
                    Text("Home")
                
            }.foregroundColor(.black)
            .tag(0)
            .onAppear() {
                self.selection = 0
            }

            
        MealPlanView()
            
        .tabItem {
                Image(systemName: "calendar")
                Text("Meal Plans")
            
        }.foregroundColor(.black)
            .tag(1)
        .onAppear() {
            self.selection = 1
        }
        
        AddRecipeView()
        
        .tabItem {
                Image(systemName: "plus.square")
                Text("Add Recipe")
            
        }.foregroundColor(.black)
        .tag(2)
        .onAppear() {
            self.selection = 2
        }
        
        GroceryView()
            
            .tabItem {
                
                    Image(systemName: "cart")
                    Text("Grocery List")
                
            }.foregroundColor(.black)
        .tag(3)
        .onAppear() {
            self.selection = 3
        }


        
        
    }.background(Color.clear)
    }
    }
}

struct TabRootView_Previews: PreviewProvider {
    static var previews: some View {
        TabRootView()
    }
}
