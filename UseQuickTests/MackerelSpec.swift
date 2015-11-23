//
//  MackerelSpec.swift
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

class MackerelSpec: QuickSpec {
    
    override func spec() {
        
        var mackerel : Mackerel!
        
        beforeEach { () -> () in
            
            mackerel = Mackerel()
        }
        
        itBehavesLike("something edible") { () -> (NSDictionary) in
            
            ["edible" : mackerel]
        }

    }
}
