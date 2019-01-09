//
//  productDetialViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/4.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class productDetialViewController: UIViewController {
    
    var product: Product?
    var buffer: productList?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var s = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let product = product{
            navigationItem.title = product.name
            let price = (String)(product.price)
            nameLabel.text = product.name + "  " + "NT$" + price
            descriptionLabel.text = product.description
            
            let urlStr = product.imageAddress
            if let url = URL(string: urlStr) {
                let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            self.imageView.image = image
                        }
                    }
                }
                task.resume()
            }
        }
    }
    
    @IBAction func favoriteButtonPress(_ sender: Any) {
        s = 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(s)
        if s == 0{
            let controller = segue.destination as? storeMapViewController
            controller?.address = product?.address
            print(product?.address ?? "")
        }
        if s == 1{
            buffer = productList(name: product?.name ?? "")
            
            print("buffer",buffer ?? "12")
            
            /*if let favoriteProductBuffer = favoriteProductBuffer{
                favoriteProducts.insert(favoriteProductBuffer, at: 0)
                productList.save(favoriteProducts: favoriteProducts)
                tableView.reloadData()
            }*/
        }
    }
}
