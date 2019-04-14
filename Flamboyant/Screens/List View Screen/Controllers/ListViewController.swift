//
//  ViewController.swift
//  Flamboyant
//
//  Created by Liana Haque on 1/31/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import UIKit
import RealmSwift

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var composeButton: UIBarButtonItem!
    
    var databaseManager = DatabaseManager()
    var notes: [Note] {
        return self.databaseManager.notes
    }
    
    var note: Note?
    let noteManager = NoteManager()
    var compositionVC = CompositionViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.shadowImage = UIImage()
        self.registerCustomNoteCell()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    @IBAction func composeButtonPressed(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controller = storyboard.instantiateViewController(withIdentifier : Constants.compositionViewControllerID) as! CompositionViewController
        controller.databaseManager = databaseManager
        self.show(controller, sender: true)
    }
    
    func loadNote(index: IndexPath) -> Note {
        let note = notes[index.row]
        return note
    }

    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            databaseManager.delete(object: notes[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func registerCustomNoteCell() {
        let cellNib = UINib(nibName: "NoteCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "NoteCell")
    }
    
}
