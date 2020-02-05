//
//  SnackTableViewCell.swift
//  TheRoster
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class SnackTableViewCell: UITableViewCell {

    @IBOutlet weak var snackImageView: UIImageView!
    
    @IBOutlet weak var snackLabel: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    
    

}
