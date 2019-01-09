//
//  skinTypeViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/3.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class skinTypeViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    var sum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons[0].titleLabel?.numberOfLines = 0
        buttons[1].titleLabel?.numberOfLines = 0
        buttons[2].titleLabel?.numberOfLines = 0
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if sender.tag == 1{
            sum = 24
        }
        if sender.tag == 2{
            sum = 20
        }
        if sender.tag == 3{
            sum = 6
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? productSelectViewController
        controller?.sum = self.sum
        print(sum)
    }
    
}
