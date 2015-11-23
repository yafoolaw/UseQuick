//
//  SilliestMokey.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/19.
//  Copyright © 2015年 刘大帅. All rights reserved.
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

public func silliest(monkeys: [Monkey]) -> [Monkey] {
    
    return monkeys.filter { $0.silliness == .VerySilly || $0.silliness == .ExtremelySilly }
}

public func monkeyContains<T : Equatable>(array : [T], object : T?) -> Bool {

    for temp in array {
    
        if temp == object {
        
            return true
        }
    }
    
    return false
}
