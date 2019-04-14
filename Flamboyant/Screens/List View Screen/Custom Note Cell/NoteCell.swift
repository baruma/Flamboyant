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
    @IBOutlet weak var cellView: UIView!
    
    var formatter = DateFormatter()
    static let identifier = "NoteCell"
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
         
    }
    
    var note: Note? = nil {
        didSet {
            guard let note = note else {
                return
            }
            self.noteTitleLabel.text = String(note.noteContent)
            formatter.dateFormat = "MM.dd.yyyy"
            self.lastEditedLabel.text = String(formatter.string(from: note.lastEdited))
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
