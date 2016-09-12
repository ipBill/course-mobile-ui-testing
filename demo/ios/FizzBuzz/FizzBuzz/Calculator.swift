import Foundation

class Main {
    
    var ramdom: RandomNumber!
    var calculator: Calculator!
    
    func process() -> Int {
        let operand1 = ramdom.get()
        let operand2 = ramdom.get()
        let result = calculator.add(operand1, operand2: operand2)
        calculator.keepLogToDatabase()
        return result
    }
}

class Calculator {
    func add(operand1: Int, operand2: Int) -> Int {
        return operand1 + operand2
    }
    
    func keepLogToDatabase() {
        print("todo")
    }
}

class RandomNumber {
    func get() -> Int {
        return Int(arc4random())
    }
}
