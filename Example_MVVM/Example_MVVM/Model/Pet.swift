//
//  Pet.swift
//  Example_MVVM
//
//  Created by Ramesh Ponnuvel on 01/11/18.
//  Copyright © 2018 Ramesh Ponnuvel. All rights reserved.
//

import UIKit

class Pet {

    
    public enum Ratity{
        case common
        case uncommon
        case rare
        case veryRare
    }
    
    public let name: String
    public let birthday: Date
    public let rarity: Ratity
    public let image_: UIImage
    
    public init(name: String, birthday: Date, rarity: Ratity, image: UIImage){
        self.name = name
        self.birthday = birthday
        self.rarity = rarity
        self.image_ = image
    }
}
