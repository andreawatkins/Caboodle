//
//  Clothes.swift
//  Caboodle
//
//  Created by Andrea Watkins on 3/9/22.
//

import Foundation
import UIKit

class Clothes {
    
//    enum `Type`: String {
//        case shirt = "Shirt"
//        case pants = "Pants"
//        case shoes = "Shoes"
//    }
    
       var name: String
       var type: String
       var image: UIImage
       
    init(name: String, type: String, image: UIImage) {
           self.name = name
           self.type = type
           self.image = image
       }
       
   }


