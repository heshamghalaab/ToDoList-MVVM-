//
//  ToDoItemTableViewCell.swift
//  tableViewMVVM
//
//  Created by hesham ghalaab on 4/6/19.
//  Copyright © 2019 hesham ghalaab. All rights reserved.
//

import UIKit

class ToDoItemTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var itemIndexLabel: UILabel!
    @IBOutlet weak var itemTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
