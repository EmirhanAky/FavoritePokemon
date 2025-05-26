//
//  favmodel.swift
//  FavoritePokemon
//
//  Created by Emirhan  Akyıldırım on 26.05.2025.
//
import Foundation
import SwiftUI

struct favmodel: Identifiable {
    var id = UUID()
    var title: String
    var elements : [favelement]
}
struct favelement: Identifiable {
    var id = UUID()
    var name: String
    var imagename : String
    var description : String
}
let pikachu = favelement(
    name: "Pikachu",
    imagename: "pikachu",
    description: "Pikachu stores electricity in its cheeks and releases it in lightning-fast attacks."
)
let jolteon = favelement(
    name: "Jolteon",
    imagename: "jolteon",
    description: "Jolteon charges its fur with electricity, striking enemies with powerful jolts."
)
let pawmi = favelement(
    name: "Pawmi",
    imagename: "pawmi",
    description: "Pawmi generates electric shocks from its paws to protect itself and its trainer."
)
let favelectiricitypokemons = favmodel(title: "Electiricity Pokemons", elements: [pikachu, jolteon,pawmi])

let vulpix = favelement(
    name: "Vulpix",
    imagename: "vulpix",
    description: "Vulpix controls fire with its six tails and uses heat to outsmart opponents."
)
let charmender = favelement(
    name: "Charmander",
    imagename: "charmander",
    description: "Charmander’s fiery tail burns brighter when it’s full of energy and ready to battle."
)
let flareon = favelement(
    name: "Flareon",
    imagename: "flareon",
    description: "Flareon breathes intense flames and can heat its body to unleash blazing attacks."
)
let favfirepokemons = favmodel(title: "Fire Pokemons", elements: [vulpix, charmender, flareon])

let myFavorites = [favelectiricitypokemons, favfirepokemons]

#Preview {
    let sampleModel = favmodel(title: "Favorite Pokémon", elements: [pikachu, charmender])
    Text(sampleModel.title)
}
