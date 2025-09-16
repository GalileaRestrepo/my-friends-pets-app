//
//  PetViewModel.swift
//  MobileActivity03
//
//  Created by AGRM  on 19/08/25.
//

import Foundation

@Observable
class PetViewModel{
    var arrPets = [Pet]()
    init (){
        var pet = Pet(name: "Lulú",
                      image: "Lulu",
                      description: "She was adopted as a kitten in the middle of the COVID-19 pandemic, about four years ago. She’s a long-haired calico who mostly stays indoors but loves going out to the garden. She’s very loving and affectionate, though she doesn’t like being held. She’s a Churu addict and loves chicken soup and watermelon.",
                      owner: "Galilea’s furbaby",
                      gender: "♀ Female",
                      gallery: ["Lulu", "Lulu2","Lulu3"])
        arrPets.append(pet)
        
        pet = Pet(name: "Nube",
                  image: "Nube",
                  description: "She was adopted two years ago and she’s a black, long-haired border collie mix. She’s very energetic, a bit troublesome, and also very affectionate. She’s a picky eater and loves to socialize with other dogs. She has torn up a few shirts and a backpack.",
                  owner: "Regina’s furbaby",
                  gender : "♀ Female",
                  gallery: ["Nube", "Nube2","Nube3"])
        arrPets.append(pet)
        
        pet = Pet(name: "Mavs",
                  image: "Mavs",
                  description: "Mavs is short for Maverick. She was adopted a year ago and she’s a golden retriever. She’s very loving, playful, and always ready for fun. She loves going on walks. She’s Nube’s sister.",
                  owner: "Regina’s furbaby",
                  gender: "♀ Female",
                  gallery: ["Mavs", "Mavs2"])
        arrPets.append(pet)
        
        pet = Pet(name: "Bruce",
                  image: "Bruce",
                  description: "One of his nicknames is Brucie. He’s a 7-year-old orange tabby who loves going outside. He’s clever, meows a lot, and is very vocal, but he’s quite timid. Once he warms up to you, he loves attention. He’s very silly.",
                  owner: "Caleb’s furbaby",
                  gender: "♂ Male",
                  gallery: ["Bruce", "Bruce2","Bruce3"])
        arrPets.append(pet)
        
        pet = Pet(name: "Puddles",
                  image: "Puddles",
                  description: "An 11-year-old brown tabby who’s incredibly soft, very affectionate, and loves attention from people; he’s an outdoor cat like his brother Bruce, and fun fact: he can’t meow.",
                  owner: "Caleb’s furbaby",
                  gender: "♂ Male",
                  gallery: ["Puddles", "Puddles2","Puddles3"])
        arrPets.append(pet)
    }
}
