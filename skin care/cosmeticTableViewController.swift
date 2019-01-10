//
//  cosmeticTableViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/9.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class cosmeticTableViewController: UITableViewController {
    
    //var brand: String?
    var cosmeticType: String?
    
    struct Cosmetic: Codable{
        var hits: [a]
    }
    
    struct a:Codable{
        var previewURL: URL
        var tags: String
    }
    
    var cosmetics = [a]()
    
    //var a = Cosmetic(name:"ddf", image_link: "sss", description: "dddd")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cosmetics.append(a)
        
        var urlStr1 = "https://pixabay.com/api/?key=11234819-722f31397427d1d6054d5cc9b&q="
            if let cosmeticType = cosmeticType{
                urlStr1 = urlStr1 + cosmeticType + "&image_type=photo"
            }
        
        print(urlStr1)
        if let urlStr = urlStr1.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: urlStr) {
            
            let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
                let decoder = JSONDecoder()
                print("987655")
                //print("dddd",CosmeticResults.self)
                if let data = data, let Cosmetic = try? decoder.decode(Cosmetic.self, from: data) {
                    print("123",data)
                    //print(CosmeticResults)
                    self.cosmetics = Cosmetic.hits
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    
                }
            }
            task.resume()
        }
        //print(self.cosmetics)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cosmetics.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cosmeticCell", for: indexPath) as! cosmeticTableViewCell

        let cosmetic = cosmetics[indexPath.row]
        cell.nameLabel.text = cosmetic.tags
        
        let task = URLSession.shared.dataTask(with: cosmetic.previewURL) { (data, response , error) in
            if let data = data {
                DispatchQueue.main.async {
                    cell.photoImage.image = UIImage(data: data)
                }
            }
        }
        task.resume()
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as? cosmeticDetialViewController
        if let row = tableView.indexPathForSelectedRow?.row{
            let cosmetic = cosmetics[row]
            controller?.cosmeticTag = cosmetic.tags
            let string = try? String(contentsOf: cosmetic.previewURL)
            controller?.cosmeticURL = string
        }
        
    }
    */

}
