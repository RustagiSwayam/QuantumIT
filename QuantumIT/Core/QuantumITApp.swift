//
//  QuantumITApp.swift
//  QuantumIT
//
//  Created by Swayam Rustagi on 21/05/24.
//

import SwiftUI

@main
struct QuantumITApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
