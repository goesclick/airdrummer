//
//  airdrummerApp.swift
//  Shared
//
//  Created by Patrick Schreiber on 5/15/21.
//

import SwiftUI

@main
struct airdrummerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
