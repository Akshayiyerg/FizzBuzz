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
        
        return "\(number)"
    }
}

final class FizzBuzzAppTests: XCTestCase {

    func test_printNumber_One() {
        
        let sut = makeSUT()
        
        expect(sut: sut, number: 1)
    }
    
    func test_printNumber_Two() {
        
        let sut = FizzBuzzApp()
        
        expect(sut: sut, number: 2)
    }

    
    // MARK: Helpers
    
    func makeSUT() -> FizzBuzzApp {
        return FizzBuzzApp()
    }
    
    func expect(sut: FizzBuzzApp, number: Int, file: StaticString = #filePath, line: UInt = #line) {
        
        let result = sut.print(number: number)
        
        XCTAssertEqual(result, "\(number)")
    }
}
