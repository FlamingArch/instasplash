//
//  BottomBar.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 23/05/22.
//

import SwiftUI

struct TabNav<Content>: View where Content: View {
    @State private var selectedPage: Int = 0
    
    let pages: [Content]
    let tabs: [String]
    
    var body: some View {
        ZStack {
            pages[selectedPage]
        }
        
        GeometryReader { geo in
            VStack {
                Spacer()
                
                HStack(alignment: .center) {
                    ForEach(0..<tabs.count) { NavIcon(icon:tabs[$0], selected: $selectedPage, index: $0, geometry: geo) }
                }
                .frame(width: geo.size.width)
                .background(Material.regular)
            }
        }

    }
    
    init(@ViewBuilder pages: () -> [Content], @ViewBuilder tabs: ()->[String]) {
        self.pages = pages()
        self.tabs = tabs()
    }
}

private struct NavIcon: View {
    var icon: String
    @Binding var selected: Int
    var index: Int
    var geometry: GeometryProxy
    
    var body: some View {
        Image(systemName: icon + (selected == index ? ".fill" : ""))
            .frame(width: geometry.size.width / 6, height: 64, alignment: .center)
            .onTapGesture {
                selected = index
            }
            .font(.title3)
    }
}
