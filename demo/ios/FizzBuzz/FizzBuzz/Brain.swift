import Foundation

class Brain: NSObject {
    
    func check(number: Int) -> Move {
        
        let rules: [Rule]
        rules = [FizzBuzzRule(), FizzRule(), BuzzRule(), IMCRule()]
        
        var result = Move.Number
        
        for rule in rules {
            if rule.isValid(number) {
                result = rule.say()
                break
            }
        }
        return result
    }
    
}

protocol Rule {
    func isValid(number: Int) -> Bool
    func say() -> Move
}

class IMCRule: Rule {
    func isValid(number: Int) -> Bool {
        return number%7 == 0
    }
    func say() -> Move {
        return Move.IMC
    }
    
}

class FizzRule: Rule {
    func isValid(number: Int) -> Bool {
        return number%3 == 0
    }
    func say() -> Move {
        return Move.Fizz
    }

}

class BuzzRule: Rule {
    func isValid(number: Int) -> Bool {
        return number%5 == 0
    }
    func say() -> Move {
        return Move.Buzz
    }
    
}

class FizzBuzzRule: Rule {
    func isValid(number: Int) -> Bool {
        return number%15 == 0
    }
    func say() -> Move {
        return Move.FizzBuzz
    }
    
}


