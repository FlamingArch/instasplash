//
//  TopBar.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 23/05/22.
//

import SwiftUI

struct TopBar<Content: View>: View {
    var title: String
    var actions: Content?
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Text(title)
                        .font(.system(size: 32))
                        .bold()
                    Spacer()
                    actions
                }
                .frame(width: geo.size.width, alignment: .leading)
                .padding(24)
                .background(
                    LinearGradient(
                        colors: [Color.background, Color.background.opacity(0)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .edgesIgnoringSafeArea(.top)
                )
                Spacer()
            }
        }
    }
    
    init(title: String, @ViewBuilder actions: ()->Content?) {
        self.title = title
        self.actions = actions()
    }
}

public extension Color {
    #if os(macOS)
    static let background = Color(NSColor.windowBackgroundColor)
    static let secondaryBackground = Color(NSColor.underPageBackgroundColor)
    static let tertiaryBackground = Color(NSColor.controlBackgroundColor)
    #else
    static let background = Color(UIColor.systemBackground)
    static let secondaryBackground = Color(UIColor.secondarySystemBackground)
    static let tertiaryBackground = Color(UIColor.tertiarySystemBackground)
    #endif
}
