//
//  Untitled.swift
//  Calculator
//
//  Created by Justin Bushfield on 2026-03-03.
//
import Foundation 
@Observable
class CalculatorViewModel {
    var displayText = "0"
    private var engine = CalculatorEngine()
    private var currentInput = ""
    
    func digitPressed(_ digit: String) {
        switch digit {
        case "+":
            engine.first = Double(displayText) ?? 0
            engine.op = "+"
            currentInput = ""
        case "-":
            engine.first = Double(displayText) ?? 0
            engine.op = "-"
            currentInput = ""
        case "*":
            engine.first = Double(displayText) ?? 0
            engine.op = "*"
            currentInput = ""
        case "/":
            engine.first = Double(displayText) ?? 0
            engine.op = "/"
            currentInput = ""
        case "=":
            engine.second = Double(displayText) ?? 0
            currentInput = String(engine.evaluate())
        case "C":
            currentInput = ""
            engine.first = 0
            engine.second = 0
            engine.op = "+"
        case ".":
            if currentInput.contains(".") {
                return
            }
        default:
            currentInput.append(digit)
        }
        displayText = currentInput
    }
    
    func calcResult(first: Double, second: Double, op: String) {
        let result = engine.evaluate()
        displayText = String(format: "%.2f", result)
    }
}
