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
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = 70;
        tableView.backgroundView = UIImageView(image: UIImage(named: "Mountains"))
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        tableView.reloadData()
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
        return RecipeBook.recipes.count
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
        
        let recipe = RecipeBook.recipes[indexPath.item]
        cell.textLabel?.text = recipe.title
        cell.recipe = recipe
        
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if (editingStyle == .delete)
        {
            RecipeBook.DeleteRecipe(id: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "detailview")
        {
            let cell = sender as! customCell
            let detailview = segue.destination as! DetailViewController
            detailview.preRecipe = cell.recipe
        }
    }
}

