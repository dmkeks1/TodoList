//
//  ListRowView.swift
//  TodoList
//
//  Created by Dominik Zehe on 05.11.24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview("This is the first title") {
    ListRowView(item: ItemModel(title: "First item", isCompleted: false))
}

#Preview("This is the second title") {
    ListRowView(item: ItemModel(title: "Second item", isCompleted: true))
}
