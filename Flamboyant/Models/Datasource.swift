//
//  Datasource.swift
//  Flamboyant
//
//  Created by Liana Haque on 2/11/19.
//  Copyright © 2019 Liana Haque. All rights reserved.
//

import Foundation

protocol Datasource {
    
    func write<T>(object: T)
    func delete<T>(object: T)
    
}
