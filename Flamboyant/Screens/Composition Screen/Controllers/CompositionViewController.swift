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
    
    var note: Note?
    let noteManager = NoteManager()
    let databasemanager = DatabaseManager()
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // See if you can remove this code at some point.
        if self.note == nil {
            self.note = Note(noteContent: "")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {

        if let note = note {  // this will only hit if ther eis a value prevalent in your note.  If there is no value, it will never hit.
            note.noteContent = self.textView.text
            self.noteManager.write(dataSource: self.databasemanager, note: self.note!)  // see how you can avoid force-unwrapping
        }
        else {
            print("Fail Whale")
            print(Error.self)
        }
    }
    
}

