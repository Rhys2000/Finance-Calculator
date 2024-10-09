//
//  NewTransactionView.swift
//  Finance Calculator
//
//  Created by Rhys Julian-Jones on 10/8/24.
//

import SwiftUI

struct NewTransactionView: View {
    
    @State private var transactionDate = Date.now
    @State private var transactionAmount = 0.0
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = Locale.current.currency?.identifier ?? "USD"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        formatter.groupingSeparator = "."
        formatter.usesGroupingSeparator = true
        return formatter
    }
    
    var body: some View {
                
        VStack {
            Text("Enter Transaction Details")
                .font(.title)
                .bold()
            TextField("Amount", value: $transactionDate, formatter: currencyFormatter)
                .textFieldStyle(.roundedBorder)
            DatePicker("Enter your birthday", selection: $transactionDate, in: ...Date.now, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
        }
    }
}

#Preview {
    NewTransactionView()
}
