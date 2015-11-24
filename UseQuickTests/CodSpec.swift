//
//  CodSpec.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/20.
//  Copyright © 2015年 刘大帅. All rights reserved.
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

import Quick
import Nimble
import UseQuick

class CodSpec: QuickSpec {
    
    override func spec() {
        
        var cod : Cod!
        
        beforeEach { () -> () in
            
            cod = Cod()
        }
        
//        itBehavesLike("something edible") { () -> (NSDictionary) in
//            
//            ["edible" : cod]
//        }
    }
}
