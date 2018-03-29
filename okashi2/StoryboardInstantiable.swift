//
//  StoryboardInstantiable.swift
//  entry
//
//  Created by User2 on 2017/12/21.
//  Copyright © 2017年 User2. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable{}

extension StoryboardInstantiable{
    
    static func instantiate() -> Self{
        let storyBoard = UIStoryboard(name:
            ClassNameFromStoryBoardInstantiable(type:Self.self),bundle:nil)
        return
         storyBoard.instantiateInitialViewController() as! Self
        
    }
}

private func ClassNameFromStoryBoardInstantiable(type:
    StoryboardInstantiable.Type) -> String {
    let classString = NSStringFromClass(type as! AnyClass)
    return classString.components(separatedBy:".").last!
}


