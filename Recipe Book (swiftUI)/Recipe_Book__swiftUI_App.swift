//
//  Recipe_Book__swiftUI_App.swift
//  Recipe Book (swiftUI)
//
//  Created by Roman Chervonyak on 10.01.2022.
//

import SwiftUI

@main
struct Recipe_Book__swiftUI_App: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
