//
//  ItemModel.swift
//  TodoList
//
//  Created by Dominik Zehe on 06.11.24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString //funktion die eine random id generiert
    let title: String
    let isCompleted: Bool
}
    
 
