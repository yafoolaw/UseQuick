//
//  Dolphin.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/20.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

public struct Click {

   public var isLoud = true
   public var hasHighFrequency = true
    
    public func count() -> Int {
    
        return 1
    }
}

public class Dolphin {
    
    public  var isFriendly = true
    public  var isSmart    = true
    public  var isHappy    = false
    
    public init() {
    
    }
    
    public init(happy: Bool) {
    
        isHappy = happy
    }
    
    public func click() -> Click {
        
        return Click()
    }
    
    public func eat(food: AnyObject) {
    
        isHappy = true
    }
}
