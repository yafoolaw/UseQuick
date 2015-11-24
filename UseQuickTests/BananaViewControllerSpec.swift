//
//  BananaViewControllerSpec.swift
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

class BananaViewControllerSpec: QuickSpec {
    
    override func spec() {

        var viewController : ViewController!
        
        beforeEach { () -> Void in
            
            viewController = ViewController()
            
//            // storyboard初始化
//            let storyboard = UIStoryboard(name: "main", bundle: nil)
//            viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        }
        
        // #1
        describe(".viewDidLoad()", { () -> Void in
            
            beforeEach({ () -> () in
                
                // 方法1: 访问控制器的view,来触发控制器的 .viewDidLoad()
                let _ = viewController.view
            })
            
            it("sets banana count label to zero", closure: { () -> () in
                
                print(viewController.bananaCountLabel.text)
                expect(viewController.bananaCountLabel.text).to(equal("0"))
            })
        })
        
        // #2
        describe("the view", { () -> Void in
            
            beforeEach({ () -> Void in
                
                // 方法2: 触发.viewDidLoad(), .viewWillAppear(), 和 .viewDidAppear() 事件
                viewController.beginAppearanceTransition(true, animated: false)
                viewController.endAppearanceTransition()
            })
            
            it("sets banana count label to zero", closure: { () -> () in
                
                expect(viewController.bananaCountLabel.text).to(equal("10"))
            })
        })
        
        // #3
        describe(".viewDidLoad()", { () -> Void in
            
            beforeEach({ () -> () in
                
                // 方法3: 直接调用生命周期事件
                viewController.viewDidLoad()
            })

            it("sets banana count label to zero", closure: { () -> () in
                
                expect(viewController.bananaCountLabel.text).to(equal("10"))
            })
        })
        
        // 测试UIControl事件
        describe("the more banana button") { () -> () in
            
            beforeEach({ () -> Void in
                
                viewController.viewDidLoad()
            })
            
            it("increments the banana count label when tapped", closure: { () -> () in
                
                viewController.button.sendActionsForControlEvents(.TouchUpInside)
                expect(viewController.bananaCountLabel.text).to(equal("1"))
            })
        }
    }
}
