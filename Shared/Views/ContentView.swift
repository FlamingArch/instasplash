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
            HomePage()
            SearchPage()
            AddPage()
            NotificationsPage()
            UserPage()
        } tabs: {[
            AppIcons.home,
            AppIcons.search,
            AppIcons.add,
            AppIcons.notifications,
            AppIcons.profile,
        ]}
    }
}
