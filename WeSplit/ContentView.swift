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
    
    var body: some View {
        NavigationView{
            
                Form{
                    Section {
                        TextField("Amount", value: $checkAmount, format:
                            .currency(code: Locale.current.currencyCode ?? "EUR"))
                            .keyboardType(.decimalPad)
                        
                    }
                    
                    Section {
                        Picker("Number of people", selection: $numberOfPeople){
                            ForEach(2 ..< 20){ numberOf in
                                Text("\(numberOf) people")
                            }
                        }
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
