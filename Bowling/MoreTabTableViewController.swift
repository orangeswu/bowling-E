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

class MoreTableTabViewController : UITableViewController {
    let more = [["image":"random","text":"랜덤"],
                ["image":"record","text":"자세녹화"],
                ["image":"calculator","text":"계산기"],
                ["image":"setting","text":"설정"]]
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
        
        cell.icon.image = UIImage.init(named: dicInfo["image"]!)
        
        cell.labelName.text = dicInfo["text"]
        
        return cell
    }
}

