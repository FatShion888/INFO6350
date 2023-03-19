//
//  TableViewCell.swift
//  MidTermQuestion1
//
//  Created by 李铭琛 on 3/18/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var citylbl: UILabel!
    @IBOutlet weak var namelbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
