//
//  TableViewCell1.swift
//  testXIB
//
//  Created by macBookAir on 7/1/2562 BE.
//  Copyright © 2562 macBookAir. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {


    @IBOutlet weak var im: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setBackgroundColor(_ color:UIColor){
        
            im.backgroundColor = color

    }
    
}
