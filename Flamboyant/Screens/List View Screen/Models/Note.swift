//
//  Note.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/2/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation

class Note {
    var id: String
    var noteContent: String
    var lastEdited: Date
    
    init(noteContent: String, id: String = UUID().uuidString, lastEdited: Date = Date()) {
        self.noteContent = noteContent
        self.lastEdited = lastEdited
        self.id = id
    }
    
    convenience init(realmNote: RealmNote) {
        self.init(noteContent: realmNote.noteContent, id: realmNote.id, lastEdited: realmNote.lastEdited)
    }

    var realmNote: RealmNote {
        return RealmNote(note: self)
    }
    
}

