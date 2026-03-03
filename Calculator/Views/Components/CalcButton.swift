//
//  CalcButtonView.swift
//  Calculator
//
//  Created by Justin Bushfield on 2026-03-03.
//

import SwiftUI

struct CalcButton: View {
    let label: String
    var color: Color = Color(.darkGray)
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.largeTitle)
                .frame(maxWidth: 100, maxHeight: 100)
                .background(color)
                .foregroundColor(.white)
                .clipShape(Circle())
        }
    }
}

#Preview {
    CalcButton(label: "1", action: { print("1")})
}
