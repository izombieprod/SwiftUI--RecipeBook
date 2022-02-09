//
//  ContentView.swift
//  Recipe Book (swiftUI)
//
//  Created by Roman Chervonyak on 10.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
