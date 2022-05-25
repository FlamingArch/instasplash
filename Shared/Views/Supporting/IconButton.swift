//
//  IconButton.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 25/05/22.
//

import SwiftUI

struct IconButton: View {
    var icon: String?
    var text: String?
    var iconFilled = false
    var action: ()->Void
    
    var body: some View {
        assert(text != nil || icon != nil)
        
        return Button {
            action()
        } label: {
            HStack(spacing: 6) {
                if let icon = icon {
                    Image( icon + (iconFilled ? ".filled" : ""))
                        .frame(width: 24, height: 24)
                }
                if let text = text {
                    Text("\(text)")
                }
            }
            .padding(8)
            .padding(.leading, 0)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
