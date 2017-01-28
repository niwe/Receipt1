//
//  UserDefaultsManager.swift
//  Receipt1
//
//  Created by Nicklas on 2017-01-28.
//  Copyright © 2017 Nicklas. All rights reserved.
//

import UIKit

class UserDefaultsManager: NSObject
{
    static let userDefaults = UserDefaults.standard
    
    class func synchronize()
    {
        let myData = NSKeyedArchiver.archivedData(withRootObject: RecipeBook.recipes)
        
        UserDefaults.standard.set(myData, forKey: "recipearray")
        UserDefaults.standard.synchronize()
    }
    
    class func initializeDefaults()
    {
        if let recipesRaw = UserDefaults.standard.data(forKey: "recipearray")
        {
            if let recipes = NSKeyedUnarchiver.unarchiveObject(with: recipesRaw) as? [Recipe]
            {
                RecipeBook.recipes = recipes
            }
        }
    }
}
