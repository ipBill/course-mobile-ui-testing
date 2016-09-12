import XCTest
@testable import FizzBuzz

class BrainPuiTest: XCTestCase {

    func testNumber(){
        let brain = Brain()
        XCTAssertEqual(brain.check(1), Move.Number)
        XCTAssertEqual(brain.check(2), Move.Number)
        XCTAssertEqual(brain.check(4), Move.Number)
        XCTAssertEqual(brain.check(8), Move.Number)
        XCTAssertEqual(brain.check(11), Move.Number)
        XCTAssertEqual(brain.check(13), Move.Number)
    }
    
    func testFizz(){
        let brain = Brain()
        XCTAssertEqual(brain.check(3), Move.Fizz)
        XCTAssertEqual(brain.check(6), Move.Fizz)
        XCTAssertEqual(brain.check(9), Move.Fizz)
        XCTAssertEqual(brain.check(12), Move.Fizz)
    }
    
    func testBuzz(){
        let brain = Brain()
        XCTAssertEqual(brain.check(5), Move.Buzz)
        XCTAssertEqual(brain.check(10), Move.Buzz)
    }
    
    func testFizzBuzz(){
        let brain = Brain()
        XCTAssertEqual(brain.check(15), Move.FizzBuzz)
        XCTAssertEqual(brain.check(30), Move.FizzBuzz)
    }
    
    func testIMC(){
        let brain = Brain()
        XCTAssertEqual(brain.check(7), Move.IMC)
    }
    

}
