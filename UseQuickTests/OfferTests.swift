//
//  OfferTests.swift
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

class OfferTests: XCTestCase {
    
    var banana : Banana!
    
    override func setUp() {
        
        super.setUp()
        banana = Banana()
    }
    
    override func tearDown() {
        
        banana = nil
        super.tearDown()
    }
    
    func testOffer_whenTheBananaIsPeeled_offersTheBanana() {
    
        // Arrange:
        banana.peel()
        
        // Act:
        let message = offer(banana)
        
        // Assert:
        XCTAssertEqual(message, "Hey, want a banana ?")
    }
    
    func testOffer_whenTheBananaIsntPeeled_offersToPeelTheBanana() {
        
        // Act:
        let message = offer(banana)
        
        // Assert:
        XCTAssertEqual(message, "Hey, want me to peel a banana for u ?")
    }
    
}
