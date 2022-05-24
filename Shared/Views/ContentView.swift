//
//  ContentView.swift
//  Shared
//
//  Created by Harsh Chaturvedi on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            TopBar()
            TabNav {
                Text("Home")
                Text("Search")
                Text("Editorial")
                Text("Notifications")
                Text("Profile")
            } tabs: {[
                AppIcons.home,
                AppIcons.search,
                AppIcons.add,
                AppIcons.notifications,
                AppIcons.profile,
            ]}
        }
    }
}
