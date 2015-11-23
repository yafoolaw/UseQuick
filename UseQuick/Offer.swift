//
//  Offer.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/19.
//  Copyright © 2015年 刘大帅. All rights reserved.
//

public func offer(banana : Banana) -> String {
    
    if banana.isEdible {
        
        return "Hey, want a banana ?"
        
    } else {
        
        return "Hey, want me to peel a banana for u ?"
    }
}
