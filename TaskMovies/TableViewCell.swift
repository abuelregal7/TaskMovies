//
//  TableViewCell.swift
//  TaskMovies
//
//  Created by mhr on 11/1/18.
//  Copyright © 2018 mhr. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
 
    
    
    
    @IBOutlet weak var imgimage: UIImageView!
    
 
    @IBOutlet weak var lbl2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
