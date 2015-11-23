//
//  DolphinTests.swift
//  UICollectionView
//
//  Created by FrankLiu on 15/11/20.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

import Quick
import Nimble
import UseQuick

class DolphinSpec: QuickSpec {
    
    override func spec() {
        
//        // it用于描述测试的方法名
//        it("is friendly") { () -> () in
//            
//            expect(Dolphin().isFriendly).to(beTruthy())
//        }
//        
//        it("is smart") { () -> () in
//            
//            expect(Dolphin().isSmart).to(beTruthy())
//        }
        
//        // describe用于描述类和方法
//        describe("a dolphin") { () -> () in
//            
//            describe("its click", { () -> Void in
//                
//                it("is loud", closure: { () -> () in
//                    
//                    let click : Click = Dolphin().click()
//                    expect(click.isLoud).to(beTruthy())
//                })
//                
//                it("has a high frequency", closure: { () -> () in
//                    
//                    let click : Click = Dolphin().click()
//                    expect(click.hasHighFrequency).to(beTruthy())
//                })
//            })
//        }
        
//        // beforeEach/afterEach相当于setUp/tearDown,beforeSuite/afterSuite相当于全局setUp/tearDown
//        describe("a dolphin") { () -> Void in
//            
//            var dolphin : Dolphin!
//            
//            beforeEach({ () -> () in
//                
//                dolphin = Dolphin()
//            })
//            
//            describe("its click", { () -> Void in
//                
//                var click : Click!
//                
//                beforeEach({ () -> () in
//                    
//                    click = dolphin.click()
//                })
//                
//                it("is loud", closure: { () -> () in
//                    
//                    expect(click.isLoud).to(beTruthy())
//                })
//                
//                it("has a high frequency", closure: { () -> () in
//                    
//                    expect(click.hasHighFrequency).to(beTruthy())
//                })
//                
//                
//            })
//        }
        
        // context用于指定条件或状态
        describe("a dolphin") { () -> () in
            
            var dolphin : Dolphin!
            
            beforeEach({ () -> Void in
                
                dolphin = Dolphin()
            })
            
            describe("its click", closure: { () -> () in
                
                var click : Click!
                
                beforeEach({ () -> () in
                    
                    click = dolphin.click()
                })
                
                context("when the dolphin is not near anything interesting", { () -> Void in
                    
                    it("is only emited once", closure: { () -> () in
                        
                        expect(click.count()).to(equal(1))
                    })
                })
                
                context("when the dolphin is near something intereting", { () -> Void in
                    
                    it("is emited three times", closure: { () -> () in
                        
                        expect(click.count()).to(equal(3))
                    })
                })
            })
        }
    }
}
