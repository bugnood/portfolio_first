//
//  portfolio_firstApp.swift
//  portfolio_first
//
//  Created by 阿部大輔 on 2023/12/09.
//

import SwiftUI

@main
struct portfolio_firstApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
