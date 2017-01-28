//
//  Recipe.swift
//  Receipt1
//
//  Created by Nicklas on 2017-01-28.
//  Copyright © 2017 Nicklas. All rights reserved.
//

import UIKit

class Recipe: NSObject
{
    var title: String?
    var content: String?
    
    init (title: String, content: String)
    {
        self.title = title
        self.content = content
    }
    
    override init()
    {
        super.init()
    }
}
