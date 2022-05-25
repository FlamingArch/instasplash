//
//  ContentView.swift
//  Shared
//
//  Created by Harsh Chaturvedi on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabNav {
            TopBar(title: "Editorial") { }
            TopBar(title: "Search") { }
            TopBar(title: "New Post") { }
            TopBar(title: "Notifications") { }
            TopBar(title: "Profile") { }
        } tabs: {[
            AppIcons.home,
            AppIcons.search,
            AppIcons.add,
            AppIcons.notifications,
            AppIcons.profile,
        ]}
    }
}
