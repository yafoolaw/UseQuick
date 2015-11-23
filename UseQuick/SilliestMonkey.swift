//
//  SilliestMokey.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/19.
//  Copyright © 2015年 刘大帅. All rights reserved.
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
