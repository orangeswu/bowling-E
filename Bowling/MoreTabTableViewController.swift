//
//  table.swift
//  Bowling
//
//  Created by Apple on 2018. 1. 11..
//  Copyright © 2018년 Apple. All rights reserved.
//

/*import Foundation

class HRModel {
    //let arrayList:[[String:String]]
    let arrayList = [["name":"랜덤"],
                     ["name":"자세녹화"],
                     ["name":"계산기"],
                     ["name":"설정"]]
}*/

import UIKit
import Foundation

class MoreTabTableViewController : UITableViewController {
    let more = [["icon":"random","name":"랜덤"],
                ["icon":"record","name":"자세녹화"],
                ["icon":"calculator","name":"계산기"],
                ["icon":"setting","name":"설정"]]
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.more.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let idCell = "random"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell)! as! MoreTabTableViewCell
        
        // 초기화...
        let dicInfo = self.more[indexPath.row]
        
        cell.icon.image = UIImage.init(named: dicInfo["icon"]!)
        
        cell.labelName.text = dicInfo["name"]
        
        return cell
    }
}

