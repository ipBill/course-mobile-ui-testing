import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        if result == move || result == Move.IMC {
            score += 1
            return (true, score)
        }
        return (false, score)
    }
    
}