//
//  FizzBuzzAppTests.swift
//  FizzBuzzAppTests
//
//  Created by Akshay  on 2023-10-04.
//

import XCTest
@testable import FizzBuzzApp

class FizzBuzzApp {
    
    func print(number: Int) -> String {
        
        if number.isMultiple(of: 15) {
            return "FizzBuzz"
        } else if number.isMultiple(of: 3) {
            return "Fizz"
        } else if number.isMultiple(of: 5) {
            return "Buzz"
        }
        return "\(number)"
    }
}

final class FizzBuzzAppTests: XCTestCase {

    func test_printNumber_One() {
        
        let sut = makeSUT()
        
        expect(sut: sut, number: 1, withResult: "1")
    }
    
    func test_printNumber_Two() {
        
        let sut = FizzBuzzApp()
        
        expect(sut: sut, number: 2, withResult: "2")
    }
    
    func test_printFizz_forNumberThree() {
        
        let sut = FizzBuzzApp()
        
        expect(sut: sut, number: 3, withResult: "Fizz")
    }
    
    func test_printFizz_multipleForThree() {
        
        let sut = FizzBuzzApp()
        
        let multipleThree = [6, 9, 12]
        
        multipleThree.forEach { element in
            expect(sut: sut, number: element, withResult: "Fizz")
        }
    }
    
    func test_printBuzz_forNumberFive() {
        
        let sut = FizzBuzzApp()
        
        expect(sut: sut, number: 5, withResult: "Buzz")
    
    }
    
    func test_printBuzz_multipleForFive() {
        
        let sut = FizzBuzzApp()
        
        let multipleFive = [10, 20, 25]
        
        multipleFive.forEach { elements in
            expect(sut: sut, number: elements, withResult: "Buzz")
        }
    }
    
    func test_printFizzBuzz_multipleOfThreeAndFive() {
        
        let sut = FizzBuzzApp()
        
        let multipleFifteen = [15, 30, 45]
        
        multipleFifteen.forEach { elements in
            expect(sut: sut, number: elements, withResult: "FizzBuzz")
        }
    }

    
    // MARK: Helpers
    
    private func makeSUT() -> FizzBuzzApp {
        return FizzBuzzApp()
    }
    
    private func expect(sut: FizzBuzzApp, number: Int, withResult expectedResult: String, file: StaticString = #filePath, line: UInt = #line) {
        
        let result = sut.print(number: number)
        
        XCTAssertEqual(result, expectedResult)
    }
}
