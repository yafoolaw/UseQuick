//
//  Mokey.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/19.
//  Copyright © 2015年 刘大帅. All rights reserved.
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

public enum MonkeyIntelligent {

    case ExtremelySilly
    case NotSilly
    case VerySilly
}

public class Monkey: Equatable {
    
    var name      : String?
    var silliness : MonkeyIntelligent?
    
   public init(name: String, silliness: MonkeyIntelligent) {
    
        self.name      = name
        self.silliness = silliness
    }
}

// 遵循Equatable协议,必须实现此方法
public func ==(lhs: Monkey, rhs: Monkey) -> Bool {
    
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}