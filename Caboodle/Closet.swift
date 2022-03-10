//
//  Closet.swift
//  Caboodle
//
//  Created by Andrea Watkins on 3/9/22.
//

import Foundation

class Closet {
    
    var myClothes: [Clothes]
    var favorites: [Clothes]
    
    init(myClothes: [Clothes], favorites: [Clothes]) {
           self.myClothes = myClothes
           self.favorites = favorites
       }
       
}
