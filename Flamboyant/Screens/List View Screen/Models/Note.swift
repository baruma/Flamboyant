//
//  Note.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/2/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation

class Note {
    var noteContent: String
    var lastEdited: Date
    var id: String
    
    init(noteContent: String, id: String = UUID().uuidString, lastEdited: Date = Date()) {
        self.noteContent = noteContent
        self.lastEdited = lastEdited
        self.id = id
    }
}
