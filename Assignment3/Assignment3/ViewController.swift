//
//  ViewController.swift
//  Assignment3
//
//  Created by 李铭琛 on 2/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let imgNames = [("Five Guys Burger", "burger"), ("Mac Fries", "fries"), ("Ball Ice Cream", "ice_cream"), ("StrewBerry MilkShake", "milkshake"), ("Steamed Bass Fish", "steamed_fish")];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgNames.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell;
        
        let (name, img) = imgNames[indexPath.row];
        
        cell.imageContainer.image = UIImage(named: img);
        cell.labelImage.text = name;
        
        return cell;
    }
}

