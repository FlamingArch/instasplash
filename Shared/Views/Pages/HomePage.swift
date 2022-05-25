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
                VStack {
                    PostCard()
                }
                .padding(.top, 64)
            }
            TopBar(title: "Editorial") { }
        }
    }
}
