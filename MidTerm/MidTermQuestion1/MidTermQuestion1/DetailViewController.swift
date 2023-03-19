//
//  DetailViewController.swift
//  MidTermQuestion1
//
//  Created by 李铭琛 on 3/18/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var desText: UITextView!

    var text: String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let text = text {
                desText.text = text
            } else {
                desText.text = "No text provided"
            }
        }
    

}
