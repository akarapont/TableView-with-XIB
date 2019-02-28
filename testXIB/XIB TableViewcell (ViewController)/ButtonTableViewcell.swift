//
//  TableViewCell3.swift
//  testXIB
//
//  Created by macBookAir on 7/1/2562 BE.
//  Copyright © 2562 macBookAir. All rights reserved.
//

import UIKit

class ButtonTableViewcell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func action(_ sender: Any) {
        
    }
    
    func setTitleButton(_ settext:String){
        
        button.setTitle(settext, for: .normal)
        
    }
    
}
