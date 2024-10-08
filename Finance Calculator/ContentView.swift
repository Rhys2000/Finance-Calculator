//
//  ContentView.swift
//  Finance Calculator
//
//  Created by Rhys Julian-Jones on 10/7/24.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        
        TabView {
            
            MerchantView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Merchants")
                }
            
            TransactionView()
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Transactions")
                }
            
            VisualView()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Visuals")
                }
        }
    }
    
}



#Preview {
    ContentView()
}
