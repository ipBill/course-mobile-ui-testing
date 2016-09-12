import XCTest
@testable import FizzBuzz

class GamePuiTest: XCTestCase {

    func testStartNewGame_Should_Score_is_0() {
        let game = Game()
        XCTAssertEqual(game.score, 0)
    }
    
    func testPlayWithNumber_Should_Score_is_1() {
        let game = Game()
        game.play(Move.Number)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayWithFizz_Should_Score_is_0() {
        let game = Game()
        game.play(Move.Fizz)
        XCTAssertEqual(game.score, 0)
    }
    
    func testPlayWithFizz_Should_Score_is_3() {
        let game = Game()
        game.score = 2
        game.play(Move.Fizz)
        XCTAssertEqual(game.score, 3)
    }
    
    

}
