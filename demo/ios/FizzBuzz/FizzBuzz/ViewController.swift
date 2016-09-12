import UIKit

class ViewController: UIViewController, GameProtocol {

    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    var controller: GameController?
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller = GameController(gameProtocol: self)
        gameScore = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func play(move: Move) {
        controller!.play(move)
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        switch sender {
        case numberButton:
            play(Move.Number)
        case fizzButton:
            play(Move.Fizz)
        case buzzButton:
            play(Move.Buzz)
        case fizzBuzzButton:
            play(Move.FizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
}


extension ViewController {
    
    func displayResult(newScore: Int) {
        self.gameScore = newScore
    }
    
    
}

