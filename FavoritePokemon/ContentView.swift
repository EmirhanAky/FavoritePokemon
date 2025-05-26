//
//  ContentView.swift
//  FavoritePokemon
//
//  Created by Emirhan  Akyıldırım on 26.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
        
            List{
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)){
                    ForEach(favorite.elements) { element in
                        NavigationLink(destination: DetailsView (choosenFavoriteElement: element)){
                            Text(element.name)
                        }
                    }
                }}
            }.navigationBarTitle(Text("PokéDex"))

        }    }
}

#Preview {
    ContentView()
}
