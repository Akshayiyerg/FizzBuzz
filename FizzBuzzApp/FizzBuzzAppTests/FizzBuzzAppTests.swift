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
        
        let sut = FizzBuzzApp()
        
        let result = sut.print(number: 1)
        
        XCTAssertEqual(result, "1")
        
    }
    
    func test_printNumber_Two() {
        
        let sut = FizzBuzzApp()
        
        let result = sut.print(number: 2)
        
        XCTAssertEqual(result, "2")
    }

}
