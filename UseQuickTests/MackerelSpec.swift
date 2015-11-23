import Quick
import Nimble
import UseQuick

class MackerelSpec: QuickSpec {
    
    override func spec() {
        
        var mackerel : Mackerel!
        
        beforeEach { () -> () in
            
            mackerel = Mackerel()
        }
        
        itBehavesLike("something edible") { () -> (NSDictionary) in
            
            ["edible" : mackerel]
        }

    }
}
