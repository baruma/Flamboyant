//
//  ListViewController+Datasource.swift
//  Flamboyant
//
//  Created by Liana Haque on 1/31/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation
import UIKit

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell") as! NoteCell
        cell.note = self.notes[indexPath.row]
        return cell
    }
}
