//
//  FizzBuzzApp.swift
//  FizzBuzzApp
//
//  Created by Akshay  on 2023-10-04.
//

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
