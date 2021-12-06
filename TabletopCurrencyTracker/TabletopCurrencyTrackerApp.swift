//
//  TabletopCurrencyTrackerApp.swift
//  TabletopCurrencyTracker
//
//  Created by user204084 on 12/5/21.
//

import SwiftUI

@main
struct TabletopCurrencyTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
