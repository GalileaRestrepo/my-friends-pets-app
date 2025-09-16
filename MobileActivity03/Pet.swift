//
//  Pet.swift
//  MobileActivity03
//
//  Created by AGRM  on 19/08/25.
//

import Foundation

struct Pet: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description : String
    var owner : String
    var gender : String
    var gallery: [String] = []
}
