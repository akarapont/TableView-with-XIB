//
//  TableViewCell2.swift
//  testXIB
//
//  Created by macBookAir on 7/1/2562 BE.
//  Copyright © 2562 macBookAir. All rights reserved.
//

import UIKit

class DetailTableViewcell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setText(_ nameS:String , _ detaileS:String){
        
        name.text = nameS
        detail.text = detaileS
        
    }
    
}
