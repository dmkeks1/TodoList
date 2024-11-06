//
//  ListViewModel.swift
//  TodoList
//
//  Created by Dominik Zehe on 06.11.24.
//

import Foundation

class ListViewModel: ObservableObject {
   
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First Item", isCompleted: false),
              ItemModel(title: "Second Item", isCompleted: true),
              ItemModel(title: "Third Item", isCompleted: false),
          ]
        items.append(contentsOf: newItems)
    }
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
