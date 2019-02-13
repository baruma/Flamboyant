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
    let databaseManager = DatabaseManager()
    
    var notes: [Note] {
        return self.databaseManager.notes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.shadowImage = UIImage()
        self.registerCustomNoteCell()
    }
    
    func registerCustomNoteCell() {
        let cellNib = UINib(nibName: "NoteCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "NoteCell")
    }
    

}
