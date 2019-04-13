//
//  Writable.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/12/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation

protocol Writable {
    func write(dataSource: Datasource, note: Note)
}
