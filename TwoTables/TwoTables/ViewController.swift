//
//  ViewController.swift
//  TwoTables
//
//  Created by Mingchen Li on 11/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let resturant : Array<String> = ["pizza home", "curry home", "hot pot home", "bun home"]
    let menu : Array<Array<String>> = [[], ["Hawaiian pizza", "Italian pizza", "American pizza", "classic pizza"],
                                       ["Indian curry", "Nippon curry", "SEA curry"],
                                       ["lamb hot pot", "beef hot pot"],
                                       ["steamed bun", "pork bun", "chicken bun", "beef bun", "sweet bun"]]
    var selectedRestaurantIndex = 0
    var currentMenu = [String]()
    
    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        currentMenu = menu[selectedRestaurantIndex];
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return resturant.count
        }else{
            return currentMenu.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
            cell.textLabel?.text = resturant[indexPath.row];
            return cell;
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
            cell.textLabel?.text = currentMenu[indexPath.row];
            return cell;
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            selectedRestaurantIndex = indexPath.row;
            currentMenu = menu[selectedRestaurantIndex + 1];
            tblViewBottom.reloadData();
        }
    }
}

