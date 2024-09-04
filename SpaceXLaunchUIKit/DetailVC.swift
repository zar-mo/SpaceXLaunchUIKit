//
//  DetailVC.swift
//  SpaceXLaunchUIKit
//
//  Created by Abouzar Moradian on 9/4/24.
//

import UIKit

class DetailVC: UIViewController{
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    
    var imageDir: String?
    var name: String?
    var descript: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let passedName = name{
            nameLabel.text = name
            
        }
        
        if let passedDescription = descript{
            descriptLabel.text = passedDescription
        }
        
        
    }
    
}
