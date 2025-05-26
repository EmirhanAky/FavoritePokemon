//
//  DetailsView.swift
//  FavoritePokemon
//
//  Created by Emirhan  Akyıldırım on 27.05.2025.
//

import SwiftUI

struct DetailsView: View {
    
    var choosenFavoriteElement : favelement
    
    
    var body: some View {
        VStack{
            Image(choosenFavoriteElement.imagename)
                .resizable()
                .frame(width: 400, height: 400)
            
            
            Text(choosenFavoriteElement.name)
                .bold()
                .font(.largeTitle)
            
            Text(choosenFavoriteElement.description)
        }
        
    }
}

#Preview {
    DetailsView(choosenFavoriteElement: pikachu)
}
