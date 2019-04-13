//
//  NoteCell.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/1/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {
    
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var lastEditedLabel: UILabel!
    
   //  let compositionVC = CompositionViewController()
    var date = Date()
    var formatter = DateFormatter()
    static let identifier = "NoteCell"

    override func awakeFromNib() {
        super.awakeFromNib()
         
    }
    
    // MARK: Setting up the tableview cell title and last edited labels.
    var note: Note? = nil {
        didSet {
            guard let note = note else {
                return
            }
            self.noteTitleLabel.text = String(note.noteContent)
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"

            self.lastEditedLabel.text = String(formatter.string(from: note.lastEdited))
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
