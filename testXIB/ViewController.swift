//
//  ViewController.swift
//  testXIB
//
//  Created by macBookAir on 7/1/2562 BE.
//  Copyright © 2562 macBookAir. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
 
    @IBOutlet weak var tableView: UITableView!
    
    private enum Section {
        case Header()
        case Detail()
        case Button()
        
        var reuseId:String {
            switch self {
                
            case .Header:
                return "HeaderTableViewCell"
            case .Detail:
                return "DetailTableViewcell"
            case .Button:
                return "ButtonTableViewcell"
            
            }
        }
        
        var height:CGFloat{
            switch self {
                
            case .Header:
                return CGFloat(100)
            case .Detail:
                return CGFloat(60)
            case .Button:
                return CGFloat(70)
            }
        }
        
        
    }
    
    private var dataSource = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        
        self.tableView.register(reuseNib: "HeaderTableViewCell")
        self.tableView.register(reuseNib: "DetailTableViewcell")
        self.tableView.register(reuseNib: "ButtonTableViewcell")
        
        calculaterDataSource()
        
    }

}

//extension tabbleview
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.dataSource[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: row.reuseId , for: indexPath)
        
        if let cell2 = cell as? HeaderTableViewCell , case .Header = row {
            
            cell2.setBackgroundColor(UIColor.red)

            
        }
        else if let cell2 = cell as? DetailTableViewcell , case .Detail = row{
            
            cell2.setText("Pimonrat", "Mayoo")
            
        }
        
        else if let cell2 = cell as? ButtonTableViewcell , case .Button = row{

            cell2.setTitleButton("Let GO")
            
        }

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let row = self.dataSource[indexPath.row]
        return row.height
    }
    

}

extension ViewController{
    
    func calculaterDataSource() {
        
        var sections = [Section]()
        
        sections.append(.Header())
        sections.append(.Detail())
        sections.append(.Button())
        
        self.dataSource = sections
        self.tableView.reloadData()
    }
}

