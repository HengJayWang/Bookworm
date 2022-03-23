//
//  CoreDataManager.swift
//  Bookworm
//
//  Created by M100-M1MacMini on 2022/3/23.
//

import CoreData
import Foundation

class CoreDataManager: ObservableObject {
    
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription) ")
            }
        }
    }
}
