//
//  HomePage.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 23/05/22.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
            GeometryReader { geo in
                ScrollView {
                    VStack {
                        ForEach(1..<6) {
                            Image("sample\($0)")
                                .resizable()
                                .frame(width: geo.size.width, height: geo.size.width, alignment: .center)
                                .scaledToFill()
                        }
                    }
                }
            }
    }
}
