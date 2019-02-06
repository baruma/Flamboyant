//
//  DatabaseManager.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/6/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation
import RealmSwift

class DatabaseManager {
// use singleton if you want to reference the same thing
// dynamic var means the variables activate on runtime.  so realm goes through all your objects at runtime and parses them.
    
    var realm: Realm
    init() {
        // MARK: Load our data
        self.realm = try! Realm()
    }

}
