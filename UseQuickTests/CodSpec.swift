import Quick
import Nimble
import UseQuick

class CodSpec: QuickSpec {
    
    override func spec() {
        
        var cod : Cod!
        
        beforeEach { () -> () in
            
            cod = Cod()
        }
        
        itBehavesLike("something edible") { () -> (NSDictionary) in
            
            ["edible" : cod]
        }
    }
}
