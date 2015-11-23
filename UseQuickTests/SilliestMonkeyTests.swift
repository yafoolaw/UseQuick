//
//  SilliestMonkeyTests.swift
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
import Nimble

class SilliestMonkeyTests: XCTestCase {
    
    func testSilliest_whenMonkeysContainSillyMonkeys_theyreIncludedInTheResult() {
        
        // Arrange:
        let kiki = Monkey(name: "Kiki", silliness: .ExtremelySilly)
        let carl = Monkey(name: "Carl", silliness: .NotSilly)
        let jane = Monkey(name: "Jane", silliness: .VerySilly)
        
        // Act:
        let sillyMonkeys = silliest([kiki, carl, jane])
        
        // Assert:
//        XCTAssertTrue(monkeyContains(sillyMonkeys, object: kiki))
//        XCTAssertTrue(monkeyContains(sillyMonkeys,object: kiki), "Expected sillyMonkeys to contain 'Kiki'")
        //使用Nimble
        expect(sillyMonkeys).to(contain(kiki))
    }
}


