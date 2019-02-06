//
//  RealmNote.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/4/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation
import RealmSwift

class RealmNote: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var noteContent: String = ""
    @objc dynamic var lastEdited: Date = Date()
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(note: Note) {
        self.init()
        self.id = note.id
        self.noteContent = note.noteContent
        self.lastEdited = note.lastEdited
    }
    
    var note: Note {
        return Note(realmNote: self)
    }
    
}
