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
    
    @State private var totalAmount = 0
    
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
                        Text("00000")
                    } header: {
                        Text("Total amount")
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
