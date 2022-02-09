//
//  RecipesViewModel.swift
//  Recipe Book (swiftUI)
//
//  Created by Roman Chervonyak on 09.02.2022.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
