import XCTest
@testable import FizzBuzz

class MainTest: XCTestCase {

    func testXxxx() {
        let main = Main()
        main.ramdom = StubRandom(number: 5)
        main.calculator = Calculator()
        let result = main.process()
        XCTAssertEqual(result, 10)
    }
    
    func testYyyy() {
        let main = Main()
        let mockCalculator = MockCalculator()
        main.ramdom = StubRandom(number: 5)
        main.calculator = mockCalculator
        main.process()
        
        XCTAssertTrue(mockCalculator.verify())
    }

}

class MockCalculator: Calculator {
    var called: Bool = false
    override func keepLogToDatabase() {
        self.called = true
    }
    
    func verify() -> Bool {
        return self.called
    }
}

class StubRandom: RandomNumber {
    var number: Int = 0
    init( number: Int ) {
        self.number = number
    }
    override func get() -> Int {
        return self.number
    }
}
