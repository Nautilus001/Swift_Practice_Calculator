//
//  ContentView.swift
//  Calculator
//
//  Created by Justin Bushfield on 2026-03-03.
//

import SwiftUI

struct CalculatorView: View {
    @State private var viewModel = CalculatorViewModel()
    var body: some View {
        Grid(horizontalSpacing: 12, verticalSpacing: 12) {
            GridRow {
                CalcButton(label: "AC") {viewModel.digitPressed("C")}
                Text(viewModel.displayText)
                    .font(.largeTitle)
                    .gridCellColumns(3)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()

            }
            GridRow {
                CalcButton(label: "7") { viewModel.digitPressed("7")}
                CalcButton(label: "8") { viewModel.digitPressed("8")}
                CalcButton(label: "9") { viewModel.digitPressed("9")}
                CalcButton(label: "x", color: .orange) { viewModel.digitPressed("*")}
            }
            GridRow {
                CalcButton(label: "4") { viewModel.digitPressed("4")}
                CalcButton(label: "5") { viewModel.digitPressed("5")}
                CalcButton(label: "6") { viewModel.digitPressed("6")}
                CalcButton(label: "/", color: .orange) { viewModel.digitPressed("/")}
            }
            GridRow {
                CalcButton(label: "1") { viewModel.digitPressed("1")}
                CalcButton(label: "2") { viewModel.digitPressed("2")}
                CalcButton(label: "3") { viewModel.digitPressed("3")}
                CalcButton(label: "+", color: .orange) { viewModel.digitPressed("+")}
            }
            GridRow {
                CalcButton(label: "=") { viewModel.digitPressed("=")}
                CalcButton(label: "0") { viewModel.digitPressed("0")}
                CalcButton(label: ".") { viewModel.digitPressed(".")}
                    .disabled(viewModel.displayText.contains("."))
                    .opacity(viewModel.displayText.contains(".") ? 0.5 : 1.0)
                CalcButton(label: "-", color: .orange) { viewModel.digitPressed("-")}
                
            }
        }
        .padding()
    }
}

#Preview {
    CalculatorView()
}
