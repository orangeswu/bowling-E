//
//  ViewController.swift
//  Bowling
//
//  Created by Apple on 2018. 1. 11..
//  Copyright © 2018년 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let modelHR = OrderTableViewController()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.modelHR.more.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init(style: .value1, reuseIdentifier: nil)
        
        let dicInfo = self.modelHR.more[indexPath.row]
        
        cell.textLabel!.text = dicInfo["name"]
        //cell.detailTextLabel?.text = dicInfo["type"]
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


