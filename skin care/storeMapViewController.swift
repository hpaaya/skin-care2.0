//  storeMapViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/4.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit
import MapKit

class storeMapViewController: UIViewController, MKMapViewDelegate{
    
    var address: [String]?
    var stores = ["站前店","忠孝店","新光三越Ａ１１"]
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var storeMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.storeMapView.delegate = self
        
        let num = (address?.count ?? 0)
        for i in 0...num-1 {
     // 設定地圖
            getCoordinate(address?[i] ?? "") { (location) in
            guard let location = location else {return}
            let xScale:CLLocationDegrees = 0.06
            let yScale:CLLocationDegrees = 0.06
            let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: xScale,longitudeDelta: yScale)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: location,span: span)
            self.storeMapView.setRegion(region, animated: true)
            self.storeMapView.isZoomEnabled = true
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = location
                annotation.title = self.stores[i]
                annotation.subtitle = self.address?[i]
            self.storeMapView.addAnnotation(annotation)
            
            }
        }
        var string = "購買地點：\n\n"
        for y in 0...num-1{
            if let address = address{
                string = string + address[y] + "\n"
            }
        }
        addressLabel.text = string
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        // 判斷標記點是否與使用者相同，若為 true 就回傳 nil
        if annotation is MKUserLocation {
            return nil
        }
        // 創建一個重複使用的 AnnotationView
        var studioAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "Store")
        if studioAnnotationView == nil {
            // 如果 studioAnnotationView 為 nil，那麼我們就初始化一個 MKPinAnnotationView
            studioAnnotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "Store")
        }
        
        // 判斷如果標記的 title 為 “好想工作室”
        //if annotation.title == "台北市館前路6-2號" {
        // 設定左方圖片
        /*let imageView = UIImageView(image: UIImage(named: "Good-ideas Studio Logo ( Green )"))
         imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
         imageView.layer.cornerRadius = 6
         imageView.clipsToBounds = true
         studioAnnotationView?.leftCalloutAccessoryView = imageView*/
        
        // 設定中間描述
        let label = UILabel()
        label.text = annotation.subtitle ?? ""
        label.font = UIFont(name: "PingFangTC-Medium", size: 14)
        studioAnnotationView?.detailCalloutAccessoryView = label
        
        // 設定右方按鈕
        /*let button = UIButton(type: .detailDisclosure)
         button.addTarget(self, action: #selector(checkDetail), for: .touchUpInside)
         studioAnnotationView?.rightCalloutAccessoryView = button*/
       // }
        studioAnnotationView?.canShowCallout = true
        return studioAnnotationView
    }
    
}

extension storeMapViewController{
    // 透過地址取得地圖的座標
    func getCoordinate(_ address:String, completion: @escaping (CLLocationCoordinate2D?) -> ()) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            guard error == nil else {
                completion(nil)
                return
            }
            completion(placemarks?.first?.location?.coordinate)
        }
    }
}
