//
//  PetViewModel.swift
//  Example_MVVM
//
//  Created by Ramesh Ponnuvel on 01/11/18.
//  Copyright © 2018 Ramesh Ponnuvel. All rights reserved.
//

import Foundation
import UIKit

class  PetViewModel {
    private let pet: Pet
    private let calendar: Calendar
    
    public init(pet_: Pet){
        self.pet = pet_
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    
    public var name: String{
        return pet.name
    }
    
    public var image: UIImage {
        return pet.image_
    }
    
    public var ageText: String{
        let today = calendar.startOfDay(for: Date())
        let birthday = calendar.startOfDay(for: pet.birthday)
        let components = calendar.dateComponents([.year], from: birthday, to: today)
        
        let age = components.year
        return "\(age!) years old"
        
    }
    
    public var adoptionFeeText: String{
        switch pet.rarity {
        case .common:
            return "$50.00"
        case .uncommon:
            return "$75.00"
        case .rare:
            return "$150.00"
        case .veryRare:
            return "$500.00"
        }
    }
    
    func configure(view_: PetViewController)  {
        view_.lbl_name.text = name
        view_.lbl_age.text = ageText
        view_.lbl_fee.text = adoptionFeeText
        view_.image_logo.image = image
    }
}


