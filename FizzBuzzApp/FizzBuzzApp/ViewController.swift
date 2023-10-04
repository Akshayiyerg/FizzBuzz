//
//  ViewController.swift
//  FizzBuzzApp
//
//  Created by Akshay  on 2023-10-04.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 1...100 {
            print(FizzBuzzApp().print(number: i))
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

