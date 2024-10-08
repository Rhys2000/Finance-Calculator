//
//  Finance_CalculatorApp.swift
//  Finance Calculator
//
//  Created by Rhys Julian-Jones on 10/7/24.
//

import SwiftUI

@main
struct Finance_CalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
