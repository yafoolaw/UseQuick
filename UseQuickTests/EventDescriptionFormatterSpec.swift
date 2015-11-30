//
//  EventDescriptionFormatterSpec.swift
//
//
//  Created by FrankLiu on 15/11/30.
//
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

import Quick
import Nimble
import UseQuick

class EventDescriptionFormatterSpec: QuickSpec {
    
    override func spec() {
        
        class MockEvent: EventProtocol {
        
            var name      : String
            var startDate : NSDate
            var endDate   : NSDate
            
            init() {
            
                self.name      = "Fixture Time"
                self.startDate = NSDate.dateFromeString("2015-11-27 09:52:00")
                self.endDate   = NSDate.dateFromeString("2015-11-27 10:52:00")
            }
            
        }
        
        describe("EventDescriptionFormatter") { () -> Void in
            
            var descriptionFormatter : EventDescriptionFormatter!
            let mockEvent = MockEvent()
            
            beforeEach { () -> () in
                
                descriptionFormatter = EventDescriptionFormatter()
            }
            
            context(".eventDescriptionFromEvent") { () -> Void in
                
                it("should describe the event", closure: { () -> () in
                    
                    expect(descriptionFormatter.eventDescriptionFromEvent(mockEvent)).to(equal("Fixture Time:开始于2015-11-27 09:52:00,结束于2015-11-27 10:52:00"))
                })
            }
        }
    }
}
