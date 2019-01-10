//
//  cosmeticTypeViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/9.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class cosmeticTypeViewController: UIViewController {
    
    //var brand: String?
    var cosmeticTypeEnglish = ["nail+polish","eyeliner","eyeshadow","lipstick","mascara"]
    var cosmeticType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if sender.tag == 1{
           cosmeticType = cosmeticTypeEnglish[0]
            print(cosmeticType)
        }
        if sender.tag == 2{
            cosmeticType = cosmeticTypeEnglish[1]
            print(cosmeticType)
        }
        if sender.tag == 3{
            cosmeticType = cosmeticTypeEnglish[2]
            print(cosmeticType)
        }
        if sender.tag == 4{
           cosmeticType = cosmeticTypeEnglish[3]
            print(cosmeticType)
        }
        if sender.tag == 5{
            cosmeticType = cosmeticTypeEnglish[4]
            print(cosmeticType)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? cosmeticTableViewController
        //controller?.brand = brand
        controller?.cosmeticType = cosmeticType
    }

}



