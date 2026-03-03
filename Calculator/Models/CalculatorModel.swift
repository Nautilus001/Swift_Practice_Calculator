//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Justin Bushfield on 2026-03-03.
//

import Foundation

struct CalculatorEngine {
    var first: Double = 0
    var second: Double = 0
    var op: String = "+"
    
    func evaluate() -> Double {
        switch op {
        case "+": first + second
        case "-": first - second
        case "*": first * second
        case "/": first / second
        default: 0
        }
    }
}
