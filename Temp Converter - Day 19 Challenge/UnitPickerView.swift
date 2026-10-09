//
//  UnitPickerView.swift
//  Temp Converter - Day 19 Challenge
//
//  Created by Timothy Albertson on 10/7/26.
//

import SwiftUI

struct UnitPickerView: View {
    @Binding var unitFrom: TemperatureUnit
    @Binding var unitTo: TemperatureUnit

    var availableDestinationUnits: [TemperatureUnit] {
        TemperatureUnit.allCases.filter { $0 != unitFrom }
    }

    var body: some View {
        HStack(spacing: 150) {
            Section("Convert From") {
                Picker("Unit From", selection: $unitFrom) {
                    ForEach(TemperatureUnit.allCases, id: \.self) { unit in
                        Text(unit.rawValue)
                            .tag(unit)
                    }
                }
            }
        }
        HStack(spacing: 150) {
            Section("Convert To") {
                Picker("Unit To", selection: $unitTo) {
                    ForEach(availableDestinationUnits, id: \.self) { unit in
                        Text(unit.rawValue)
                            .tag(unit)
                    }
                }
                .onChange(of: unitFrom) {
                    if !availableDestinationUnits.contains(unitTo) {
                        if let replacementUnit = availableDestinationUnits.first {
                            unitTo = replacementUnit
                        }
                    }
                }
            }
        }
    }
}
