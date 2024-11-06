//
//  ListView.swift
//  TodoList
//
//  Created by Dominik Zehe on 05.11.24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in //geht durch alle objekte im items array. id: \.self gibt jedem item eine unique id
                 ListRowView(item: item)
                //ListRowView(title: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(), //buttons oben links und oben rechts
                            trailing:
                                NavigationLink("Add", destination: AddView())
            )
    }
    
    
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(ListViewModel())
}



