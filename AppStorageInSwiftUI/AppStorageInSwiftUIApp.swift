//
//  AppStorageInSwiftUIApp.swift
//  AppStorageInSwiftUI
//
//  Created by Renato Mateus on 09/02/21.
//

import SwiftUI

@main
struct AppStorageInSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
