//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Patrick Klein on 5/14/22.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            RecipeFeatureView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                    }
                }.tag(1)
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "gearshape.2")
                    }
                }
        }.environmentObject(RecipeModel())
        

        
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
