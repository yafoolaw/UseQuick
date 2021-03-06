//
//  EdibleSharedExamplesConfiguration.swift
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

class EdibleSharedExamplesConfiguration: QuickConfiguration {
    
    override class func configure(configuration: Configuration) {
        
        sharedExamples("something edible") { (sharedExampleContext : SharedExampleContext) -> Void in
            
            it("makes dolphins happy", closure: { () -> () in
                
                let dolphin = Dolphin(happy: false)
                let edible  = sharedExampleContext()["edible"]
                
                dolphin.eat(edible!)
                expect(dolphin.isHappy).to(beFalsy())
            })
        }
    }
}

//class MackerelSpec : QuickSpec {
//    
//    override func spec() {
//        
//        var mackerel : Mackerel!
//        
//        beforeEach { () -> () in
//            
//            mackerel = Mackerel()
//        }
//        
//        itBehavesLike("something edible") { () -> (NSDictionary) in
//            
//            ["edible" : mackerel]
//        }
//    }
//}
//
//class CodSpec: QuickSpec {
//    
//    override func spec() {
//        
//        var cod : Cod!
//        
//        beforeEach { () -> () in
//            
//            cod = Cod()
//        }
//        
//        itBehavesLike("something edible") { () -> (NSDictionary) in
//            
//            ["edible" : cod]
//        }
//    }
//}