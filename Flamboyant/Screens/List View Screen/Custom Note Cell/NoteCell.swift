//
//  NoteCell.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/1/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import UIKit
import gooey_cell

class NoteCell: UITableViewCell {
    
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var lastEditedLabel: UILabel!
    let compositionVC = CompositionViewController()
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
            noteTitleLabel.text = compositionVC.textView.text
            lastEditedLabel.text = "uhhhhh"
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
