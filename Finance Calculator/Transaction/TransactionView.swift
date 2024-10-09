//
//  TransactionView.swift
//  Finance Calculator
//
//  Created by Rhys Julian-Jones on 10/8/24.
//

import SwiftUI

struct TransactionView: View {
    
    @State var showNewTransactionView = false
    
    var body: some View {
        NavigationStack {
            Text("Hello World")
                .navigationTitle("Transactions")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        EditButton()
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            print("Button Pressed")
                            showNewTransactionView.toggle()
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                }
                .sheet(isPresented: $showNewTransactionView, content: {
                    NewTransactionView()
                })
        }
    }
}

#Preview {
    TransactionView()
}
