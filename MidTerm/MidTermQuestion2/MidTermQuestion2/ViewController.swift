//
//  ViewController.swift
//  MidTermQuestion2
//
//  Created by 李铭琛 on 3/18/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController {

    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var pricelbl: UILabel!
    @IBOutlet weak var symbollbl: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var weblbl: UILabel!
    

    @IBAction func getStockInfo(_ sender: Any) {
        guard let symbol = symbollbl.text else {return}
        
        let url = "\(baseURL)\(symbol)?apikey=\(apiKey)"
        
        SwiftSpinner.show("Getting Stock Profile for \(symbol)")
        
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide()
            if response.error != nil {
                print("Error in response")
                return
            }
            guard let rawData = response.data else {return}
            guard let jsonArray = JSON(rawData).array else {return}
            guard let stock = jsonArray.first else {return}
            let companyName = stock["companyName"].stringValue
            let price = stock["price"].doubleValue
            let website = stock["website"].stringValue
            
            self.namelbl.text = "Company Name = \(companyName)"
            self.pricelbl.text = "Price = \(price) $"
            self.weblbl.text = "Website: \(website)"
        }
    }
}

