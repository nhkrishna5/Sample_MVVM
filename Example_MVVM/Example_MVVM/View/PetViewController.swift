//
//  PetViewController.swift
//  Example_MVVM
//
//  Created by Ramesh Ponnuvel on 01/11/18.
//  Copyright © 2018 Ramesh Ponnuvel. All rights reserved.
//

import UIKit

class PetViewController: UIViewController {

    
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_age: UILabel!
    @IBOutlet weak var lbl_fee: UILabel!
    @IBOutlet weak var image_logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let birthDay = Date(timeIntervalSinceNow: -2 * 86400 * 366)
        let image_ = UIImage(named: "work_sheet-2")
        let stuart = Pet(name: "stuart", birthday: birthDay, rarity: .veryRare, image: image_!)
        let viewMod = PetViewModel(pet_: stuart)
        viewMod.configure(view_: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
