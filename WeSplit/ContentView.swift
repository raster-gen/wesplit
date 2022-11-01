//
//  ContentView.swift
//  WeSplit
//
//  Created by Gennady Raster on 1.11.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    private let persentages = [0, 5, 10, 15, 20]
    
    var body: some View {
        NavigationView{
            
                Form{
                    Section {
                        TextField("Amount", value: $checkAmount, format:
                            .currency(code: Locale.current.currencyCode ?? "EUR"))
                            .keyboardType(.decimalPad)
                    } header: {
                        Text("your check amount")
                    }
                    
                    Section {
                        Picker("Number of people", selection: $numberOfPeople){
                            ForEach(2 ..< 20){ numberOf in
                                Text("\(numberOf) people")
                            }
                        }
                    }
                    
                    Section {
                        Picker("Percentage", selection: $tipPercentage){
                            ForEach(persentages, id: \.self){ persent in
                                Text(persent, format: .percent)
                            }
                        }
                        .pickerStyle(.segmented)
                    } header: {
                        Text("How much tip do you want to leave?")
                    }
                    
                    Section {
                        Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "EUR"))
                    } header: {
                        Text("Total per person")
                    }
                    
            }
            .navigationTitle("We Split")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
        
     
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
