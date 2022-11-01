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
            Section{
                Form{
                    TextField("Amount", value: $checkAmount, format:
                        .currency(code: Locale.current.currencyCode ?? "EUR"))
                        .keyboardType(.decimalPad)
                    
                
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
