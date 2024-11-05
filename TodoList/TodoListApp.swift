//
//  TodoListApp.swift
//  TodoList
//
//  Created by Dominik Zehe on 05.11.24.
// https://www.youtube.com/watch?v=EPdivac0kwE&list=PLwvDm4VfkdpheGqemblOIA7v3oq0MS30i&index=2

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models(data) for View
 
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            
        }
    }
}



