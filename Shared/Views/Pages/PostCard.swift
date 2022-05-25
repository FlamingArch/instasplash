//
//  PostCard.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 25/05/22.
//

import SwiftUI

struct PostCard: View {
    private var profileUrl = "https://pbs.twimg.com/profile_images/1518129555977891842/FQbvy2DE_400x400.jpg"
    private var url = "https://source.unsplash.com/random"
    private var user = "Flaming Arch"
    private var available = true
    private var likes = 200
    
    var body: some View {
        var userBadge = HStack (alignment: .center, spacing: 8) {
            AsyncImage(url: URL(string: profileUrl)) { image in
                image
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .clipShape(Circle())
            } placeholder: {
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.primary.opacity(0.12))
                    .overlay(
                        Image(AppIcons.profile)
                            .resizable()
                            .foregroundColor(.primary)
                            .frame(width: 24, height: 24)
                    )
            }
            VStack (alignment: .leading){
                Text(user)
                if available {
                    Text("Available for Hire")
                        .font(.caption)
                }
            }
        }
        
        ZStack {
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 12) {
                    userBadge
                    AsyncImage(url: URL(string: url)) { image in
                        ZStack {
                            let styled = image
                                .resizable()
                                .frame(width: geo.size.width, height: geo.size.width)
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                            
                            styled
                                .blur(radius: 20)
                                .offset(x: 0, y: 12)
                                .opacity(0.64)
                            
                            styled
                        }
                    } placeholder: {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color.primary.opacity(0.12))
                            .frame(width: geo.size.width, height: geo.size.width)
                    }
                }
            }
            .padding(24)
        }
    }
}
