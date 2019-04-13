//
//  DatabaseManager.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/6/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation
import RealmSwift

class DatabaseManager: Datasource {
    
    var realm = try! Realm()
    
    init() {
        self.realm = try! Realm()
    }
    
    var notes: [Note] {
        let objects = realm.objects(RealmNote.self).sorted(byKeyPath: "lastEdited", ascending: false)
        
        return objects.map {
            return $0.note
        }
    }
    
    func write<T>(object: T) {
        guard let note = object as? Note else {
            return
        }
        
        try? self.realm.write {
            self.realm.add(note.realmNote, update: true)
        }
        
    }
    
    func delete<T>(object: T) {
        guard let note = object as? Note else {
            return
        }
        
        if let realmNote = self.realm.object(ofType: RealmNote.self, forPrimaryKey: note.id) {
            try! realm.write {
                realm.delete(realmNote)
            }
        }
    }
}


