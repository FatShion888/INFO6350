//
//  ViewController.swift
//  HelloWorld
//
//  Created by 李铭琛 on 1/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        print("I am here!")
    }


    @IBAction func pressToChangeLabel(_ sender: UIButton) {
        print("Button pressed!")
        label1.text = "Hello World"
        
    }
}

