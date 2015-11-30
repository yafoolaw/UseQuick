//
//  EventDescriptionFormatter.swift
//  
//
//  Created by FrankLiu on 15/11/30.
//
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

import Foundation

public extension NSDate {

    class func dateFromeString(dateString: String) -> NSDate {
    
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        return dateFormatter.dateFromString(dateString)!
    }
    
    func descriptionString() -> String {
    
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        return dateFormatter.stringFromDate(self)
    }
}

public class EventDescriptionFormatter {

    public init() {
    
    }
    
    public func eventDescriptionFromEvent(event : EventProtocol) -> String {
    
        return "\(event.name):开始于\(event.startDate.descriptionString()),结束于\(event.endDate.descriptionString())"
    }
}
