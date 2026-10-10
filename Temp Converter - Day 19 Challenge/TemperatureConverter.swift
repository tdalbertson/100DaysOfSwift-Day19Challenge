//
//  TemperatureConverter.swift
//  Temp Converter - Day 19 Challenge
//
//  Created by Timothy Albertson on 10/10/26.
//

import Foundation

struct TemperatureConverter {
    static private let celsiusKelvinScaleOffset = 273.15
    
    static func calcConversion(startingUnit: TemperatureUnit, target: TemperatureUnit, temp: Double) -> Double {
        var celsiusTemp: Double = convertToCelsius(unit: startingUnit, temp: temp)
        
        switch(target) {
        case .fahrenheit:
            return (celsiusTemp * (9.00 / 5.00)) + 32.00
        case .kelvin:
            return celsiusTemp + celsiusKelvinScaleOffset
        case .celsius:
            return celsiusTemp
        }
    }
    
    static private func convertToCelsius(unit: TemperatureUnit, temp: Double) -> Double {
        switch(unit) {
        case .fahrenheit:
            return (temp - 32.00) * (5.00 / 9.00)
        case .kelvin:
            return temp - celsiusKelvinScaleOffset
        case .celsius:
            return temp
        }
    }
}
