//
//  ViewController.swift
//  Receipt1
//
//  Created by Nicklas on 2017-01-18.
//  Copyright © 2017 Nicklas. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let array = ["item1", "item2", "item3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count;
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell")! as UITableViewCell;
        cell.textLabel?.text = array[indexPath.item];
        
        return cell;
    }
}

