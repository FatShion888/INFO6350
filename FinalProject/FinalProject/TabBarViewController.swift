//
//  TabBarViewController.swift
//  FinalProject
//
//  Created by 李铭琛 on 4/20/23.
//

import UIKit
import RealmSwift

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        let homeVC = viewControllers?[0] as! HomeViewController
        let uploadPicVC = viewControllers?[1] as! UploadImgViewController
        uploadPicVC.uploadImgDelegate = homeVC.self
    }
}
