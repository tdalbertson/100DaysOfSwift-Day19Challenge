import SwiftUI

struct ContentView: View {
    @State private var unitConvertFrom: TemperatureUnit = .fahrenheit
    @State private var unitConvertTo: TemperatureUnit = .celsius
    @State private var userEnteredValue: Double = 0.0
    
    var conversionResult: Double = 0.0
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 12) {
                Text("Temperature Converter")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
                UnitPickerView(unitFrom: $unitConvertFrom, unitTo: $unitConvertTo)
                UserInputView(userInput: $userEnteredValue)
                
            }
        }
        .navigationTitle("Temperature Converter")
        .padding()
    }
}

#Preview {
    ContentView()
}
