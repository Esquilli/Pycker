//
//  PyckerApp.swift
//  Pycker
//
//  Created by Pedro Fernandez on 1/18/22.
//

import SwiftUI

@main
struct PyckerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
