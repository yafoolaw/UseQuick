//
//  Banana.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/19.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

public class Banana {

    private var isPeeled = false
    
    public init() {
    
    }
    
    public func peel() {
    
        isPeeled = true
    }
    
    public var isEdible : Bool {
    
        return isPeeled
    }
}