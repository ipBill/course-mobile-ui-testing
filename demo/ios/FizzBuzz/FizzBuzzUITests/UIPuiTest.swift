import XCTest

class UIPuiTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test15() {
        let app = XCUIApplication()
        app.launchEnvironment = ["animations": "0"]
        app.launch()
        
        // TODO
        let buttonNumber = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        buttonNumber.tap()
        buttonNumber.tap()
        fizzButton.tap()
        buttonNumber.tap()
        buzzButton.tap()
        fizzButton.tap()
        buttonNumber.tap()
        buttonNumber.tap()
        fizzButton.tap()
        buzzButton.tap()
        buttonNumber.tap()
        fizzButton.tap()
        buttonNumber.tap()
        buttonNumber.tap()
        fizzBuzzButton.tap()
        
        XCTAssertEqual(buttonNumber.label, "15")
    }

    func testExample() {
        let app = XCUIApplication()
        app.launchEnvironment = ["animations": "0"]
        app.launch()
        
        let button = XCUIApplication().buttons["numberButton"]
        button.tap()
        XCTAssertEqual(button.label, "1")
    }

}
