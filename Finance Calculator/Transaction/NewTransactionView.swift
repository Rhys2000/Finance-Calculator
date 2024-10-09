//
//  NewTransactionView.swift
//  Finance Calculator
//
//  Created by Rhys Julian-Jones on 10/8/24.
//

import SwiftUI

struct NewTransactionView: View {
    
    @State private var transactionDate = Date.now
    
    var body: some View {
        VStack {
            DatePicker("Enter your birthday", selection: $transactionDate, in: ...Date.now, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
        }
    }
}

#Preview {
    NewTransactionView()
}
