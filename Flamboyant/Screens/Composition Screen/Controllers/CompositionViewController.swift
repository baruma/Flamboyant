//
//  CompositionViewController.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/2/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import UIKit
import RealmSwift

class CompositionViewController: UIViewController {

    let noteManager = NoteManager()
    var databaseManager: DatabaseManager?
    var note: Note?

    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = note?.noteContent
    }
    
    func saveNote(note: Note) {
        if note.noteContent.isEmpty {
            return
        }
        
        let databaseManager = self.databaseManager ?? DatabaseManager()
        self.noteManager.write(dataSource: databaseManager, note: note)
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        let note = self.note ?? Note(noteContent: self.textView.text)
        saveNote(note: note)
        // add super????
    }


}

