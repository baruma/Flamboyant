//
//  NoteManager.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/12/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation

class NoteManager: Writable, Deletable {

    func write(dataSource: Datasource, note: Note) {
        note.lastEdited = Date()
        dataSource.write(object: note)
    }
    
    func delete(dataSource: Datasource, note: Note) {
        dataSource.delete(object: note)
    }
    
}
