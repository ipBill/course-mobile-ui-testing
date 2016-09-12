import Foundation

protocol GameProtocol {
    func displayResult(newScore: Int)
}

class GameController {
    
    var game : Game?
    var gameProtocol: GameProtocol?
    
    init(gameProtocol: GameProtocol) {
        self.game = Game()
        self.gameProtocol = gameProtocol
    }
    
    func play(move: Move){
        let (_, score) = (self.game?.play(move))!
        self.gameProtocol?.displayResult(score)
    }
    
}
