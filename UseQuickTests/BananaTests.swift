//
//  BananaTest.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/19.
//  Copyright © 2015年 刘大帅. All rights reserved.
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

import XCTest
import UseQuick

class BananaTests: XCTestCase {
    
    // 为了准确定位测试内容,方法名应该能反映出测试内容
    func testPeel_makesTheBananaEdible()  {
    
        // Arrange:
        let banana = Banana()
        
        // Act:
        banana.peel()
        
        // Assert:
        XCTAssertTrue(banana.isEdible)
    }
}