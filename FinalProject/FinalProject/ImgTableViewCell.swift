//
//  ImgTableViewCell.swift
//  FinalProject
//
//  Created by 李铭琛 on 4/21/23.
//

import UIKit

class ImgTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }    
}
