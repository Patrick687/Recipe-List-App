//
//  RecipeFeatureView.swift
//  Recipe List App
//
//  Created by Patrick Klein on 5/15/22.
//

import SwiftUI

struct RecipeFeatureView: View {
    
    @EnvironmentObject var model : RecipeModel
    
    var body: some View {
        
        VStack {
            
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top, 40)
                .font(.largeTitle)
        
            GeometryReader { geo in
            TabView {
                
                ForEach (0..<model.recipes.count) { index in
                    
                    if model.recipes[index].featured == true {
                        
                        ZStack {
                        
                        
                            Rectangle().foregroundColor(.gray)
                            
                            VStack (spacing : 0) {
                                Image(model.recipes[index].image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                                Text(model.recipes[index].name)
                                    .padding(.top, 10)
                                    .padding(.bottom, 10)
                            }
                        }.frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                            .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                            .cornerRadius(15)
                    }
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack {
                Text("Preparation Time")
                    .font(.headline)
                Text("1 Hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Hearty")
            }
            .padding(.leading)
            
        }
         
        
    }
}

struct RecipeFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeatureView().environmentObject(RecipeModel())
    }
}
