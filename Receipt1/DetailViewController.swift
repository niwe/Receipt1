//
//  DetailViewController.swift
//  Receipt1
//
//  Created by Nicklas on 2017-01-28.
//  Copyright © 2017 Nicklas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var reciptContent: UITextView!
    var preRecipe:Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = preRecipe?.title
        self.reciptContent.text = preRecipe?.content
    }

    override func viewDidAppear(_ animated: Bool)
    {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
