//
//  RecipeBook.swift
//  Receipt1
//
//  Created by Nicklas on 2017-01-28.
//  Copyright © 2017 Nicklas. All rights reserved.
//

import UIKit

class RecipeBook: NSObject
{
    static var recipes = [Recipe]()
    
    class func AddRecipe(title: String, content: String)
    {
        let r = Recipe(title: title, content: content)
        
        recipes.append(r)
    }
    
    class func DeleteRecipe(id: Int)
    {
        recipes.remove(at: id)
    }
    
    class func GetRecipe(id: Int) -> Recipe
    {
        if (recipes.count > 0)
        {
            return recipes[id]
        }
        
        return Recipe()
    }
}
