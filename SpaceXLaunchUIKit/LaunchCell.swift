//
//  LaunchCell.swift
//  SpaceXLaunchUIKit
//
//  Created by Abouzar Moradian on 9/4/24.
//

import UIKit

class LaunchCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var descript: UILabel!
    
    static let identifier =  "LaunchCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
