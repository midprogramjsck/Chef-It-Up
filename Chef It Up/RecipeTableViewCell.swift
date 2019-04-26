//
//  RecipeTableViewCell.swift
//  Chef It Up
//
//  Created by Kiyon Mason on 4/23/19.
//  Copyright © 2019 Jay'son Alburg. All rights reserved.
//

import Parse
import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var favoriteSwitch: UISwitch!
    
    var id: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if favoriteSwitch.isOn == true {
            let user = PFUser.current()
            user?.add(id!, forKey: "favorites")
            user?.saveInBackground()
        }
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
