//
//  AddViewController.swift
//  Receipt1
//
//  Created by Nicklas on 2017-01-28.
//  Copyright © 2017 Nicklas. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    
    @IBOutlet var titleText: UITextField!
    @IBOutlet var recipeContent: UITextView!
    @IBOutlet var doneButton: UIBarButtonItem!
    @IBOutlet var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        handleButtonStates()
        
        NotificationCenter.default.addObserver(self, selector: #selector(AddViewController.textTitleDidChange), name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(AddViewController.recipeContentDidChange), name: NSNotification.Name.UITextViewTextDidChange, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textTitleDidChange()
    {
        handleButtonStates()
    }
    
    func recipeContentDidChange()
    {
        handleButtonStates()
    }
    
    @IBAction func doneButton_click(_ sender: Any)
    {
        recipeContent.resignFirstResponder()
        titleText.resignFirstResponder()
    }

    @IBAction func titleDoneButton_click(_ sender: Any)
    {
        titleText.resignFirstResponder()
    }
    
    
    func handleButtonStates()
    {
        // handle add button
        if (titleText.text != "" && recipeContent.text != "")
        {
            addButton.isEnabled = true
            addButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        }
        else
        {
            addButton.isEnabled = false
            addButton.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        }
        
        // handle done button
        /*
        if (recipeContent.text != "")
        {
            doneButton.isEnabled = true
        }
        else
        {
            doneButton.isEnabled = false
        }
        */
        
    }
    
    @IBAction func addButton_click(_ sender: Any)
    {
        RecipeBook.AddRecipe(title: titleText.text!, content: recipeContent.text)
        
        //ViewController.tableView().reloadData()
        
        
        
        titleText.text = ""
        recipeContent.text = ""
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
