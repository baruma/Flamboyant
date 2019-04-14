//
//  ListViewController+Delegate.swift
//  Flamboyant
//
//  Created by Liana Haque on 1/31/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let indexPathNote = loadNote(index: indexPath)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier : Constants.compositionViewControllerID) as! CompositionViewController
        controller.databaseManager = databaseManager
        controller.note = indexPathNote
        self.show(controller, sender: true)
        
    }
    
}
