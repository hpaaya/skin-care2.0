//
//  peoductSelectViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/3.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class productSelectViewController: UIViewController {
    
    @IBOutlet weak var skinTypeLabel: UILabel!
    var sum: Int?
    var skinType = ""
    var productType = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        if let sum = sum{
            if sum > 23{
                skinTypeLabel.text = "您是油性皮膚"
                print(String(sum) + "您是油性皮膚")
                self.skinType = "油性"
            }
            else if sum < 7{
                skinTypeLabel.text = "您是乾性皮膚"
                print(String(sum) + "您是乾性皮膚")
                self.skinType = "乾性"
            }
            else{
                skinTypeLabel.text = "您是混合性皮膚、中性皮膚、敏感性皮膚"
                print(String(sum) + "您是混合性皮膚、中性皮膚、敏感性皮膚")
                self.skinType = "中性"
            }
        }
        
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if sender.tag == 1{
            self.productType = "化妝水"
            print(productType)
            print(skinType)
        }
        if sender.tag == 2{
            self.productType = "乳液"
            print(productType)
            print(skinType)
        }
        if sender.tag == 3{
            self.productType = "精華液"
            print(productType)
            print(skinType)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? productTableViewController
        controller?.productType = self.productType
        controller?.skinType = self.skinType
        //print(sum)
    }

}
