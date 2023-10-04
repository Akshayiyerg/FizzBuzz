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
        
        if number % 3 == 0 {
            return "Fizz"
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
    
    func test_printNumber_Three() {
        
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

    
    // MARK: Helpers
    
    func makeSUT() -> FizzBuzzApp {
        return FizzBuzzApp()
    }
    
    func expect(sut: FizzBuzzApp, number: Int, withResult expectedResult: String, file: StaticString = #filePath, line: UInt = #line) {
        
        let result = sut.print(number: number)
        
        XCTAssertEqual(result, expectedResult)
    }
}
