//
//  UITableViewHelper.swift
//  testXIB
//
//  Created by macBookAir on 7/1/2562 BE.
//  Copyright © 2562 macBookAir. All rights reserved.
//

import Foundation
import UIKit


extension UITableView {
    
    func register(reuseNib: String) {
        
        self.register(UINib.init(nibName: reuseNib , bundle: .main),forCellReuseIdentifier: reuseNib)
        
    }
}
