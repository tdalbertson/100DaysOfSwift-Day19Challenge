//
//  UserInputView.swift
//  Temp Converter - Day 19 Challenge
//
//  Created by Timothy Albertson on 10/10/26.
//

import SwiftUI

struct UserInputView: View {
    @Binding var userInput: Double
    
    var body: some View {
        Section {
            HStack(spacing: 150) {
                Text("Enter a temperature: ")
                TextField("e.g. 32.00", value: $userInput, format: .number.precision(.fractionLength(2)))
                    .keyboardType(.decimalPad)
            }
        }
    }
}
