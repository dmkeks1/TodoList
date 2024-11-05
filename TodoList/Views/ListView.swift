//
//  ListView.swift
//  TodoList
//
//  Created by Dominik Zehe on 05.11.24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title!",
        "This is the second title!",
        "Third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in //geht durch alle objekte im items array. id: \.self gibt jedem item eine unique id
                ListRowView(title: item)
                
            }
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
}



