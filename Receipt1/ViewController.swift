//
//  ViewController.swift
//  Receipt1
//
//  Created by Nicklas on 2017-01-18.
//  Copyright © 2017 Nicklas. All rights reserved.
//

import UIKit

class ViewController: UITableViewController
{

    let array = ["item1", "item2", "item3"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = 70;
        tableView.backgroundView = UIImageView(image: UIImage(named: "Mountains"))
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        navigationController?.navigationBar.alpha = 0.5
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return array.count;
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell") as! customCell
        
        if (indexPath.item % 2 == 0)
        {
            cell.backgroundColor = UIColor.clear
        }
        else
        {
            cell.backgroundColor = UIColor.white.withAlphaComponent(0.2);
            cell.textLabel?.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        }
        
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.text = array[indexPath.item]
        cell.Receip = cell.textLabel?.text
        
        return cell;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "detailview")
        {
            let cell = sender as! customCell
            let detailview = segue.destination as! DetailViewController
            detailview.preReceipe = cell.Receip
        }
    }
}

