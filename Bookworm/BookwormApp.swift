//
//  BookwormApp.swift
//  Bookworm
//
//  Created by M100-M1MacMini on 2022/3/23.
//

import SwiftUI

@main
struct BookwormApp: App {
    
    @StateObject private var coredataManager = CoreDataManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, coredataManager.container.viewContext)
        }
    }
}
