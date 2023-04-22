//
//  ProtocolUploadImg.swift
//  FinalProject
//
//  Created by 李铭琛 on 4/20/23.
//

import Foundation
import UIKit

protocol UploadImgProtocol {
    func uploadedImgDelegate(img : UIImage, location : String, imgTitle : String)
}
