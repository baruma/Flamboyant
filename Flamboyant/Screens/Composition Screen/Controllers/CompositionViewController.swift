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
    
    var note: Note? = nil
    let noteManager = NoteManager()
    let databasemanager = DatabaseManager()
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.noteManager.write(dataSource: self.databasemanager, note: self.note)
    }
    
}

