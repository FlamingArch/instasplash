//
//  HomePage.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 23/05/22.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            ScrollView {
                LazyVStack {
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                }
                .padding(.top, 64)
                .padding(.bottom, 64)
            }
            TopBar(title: "Editorial") { }
        }
    }
}
