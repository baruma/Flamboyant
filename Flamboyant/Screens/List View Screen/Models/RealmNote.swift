//
//  RealmNote.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/4/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation
import RealmSwift

class RealmNote: Object {
    @objc dynamic var identifier: String = ""
    @objc dynamic var content: String = ""
    @objc dynamic var lastEdited: Date = Date()
}


