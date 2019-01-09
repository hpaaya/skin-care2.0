//
//  cosmeticBrandSelectViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/9.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class cosmeticBrandSelectViewController: UIViewController {
    
    var brand = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if sender.tag == 1{
            brand = sender.currentTitle ?? ""
            print(brand)
        }
        if sender.tag == 2{
            brand = sender.currentTitle ?? ""
            print(brand)
        }
        if sender.tag == 3{
            brand = sender.currentTitle ?? ""
            print(brand)
        }
        if sender.tag == 4{
            brand = sender.currentTitle ?? ""
            print(brand)
        }
        if sender.tag == 5{
            brand = sender.currentTitle ?? ""
            print(brand)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? cosmeticTypeViewController
        controller?.brand = brand
    }

}

