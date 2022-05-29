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
    private var user = "John Doe"
    private var available = true
    private var duration = "21 hours ago"
    private var location = "Zürich, Switzerland"
    @State private var likes = Int.random(in: 0..<2000)
    @State private var liked = false
    
    var body: some View {
        let userBadge = HStack (alignment: .center, spacing: 8) {
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
            VStack(alignment: .leading, spacing: 12) {
                userBadge
                AsyncImage(url: URL(string: url)) { image in
                    ZStack {
                        let styled = image
                            .resizable()
                            .scaledToFill()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                        styled
                            .blur(radius: 50)
                            .offset(x: 0, y: 12)
                            .opacity(0.5)
                        
                        styled
                    }
                } placeholder: {
                    RoundedRectangle(cornerRadius: 16).foregroundColor(Color.primary.opacity(0.12)).frame(height: 400)
                }
                
                HStack(spacing: 10) {
                    IconButton(icon: AppIcons.heart, text: "\(likes)", iconFilled: liked) {
                        liked.toggle()
                        if (liked) { likes += 1 } else { likes -= 1 }
                    }
                    
                    IconButton(icon: AppIcons.download) {
                        print("NOT IMPLEMENTED: Download Button")
                    }
                    
                    IconButton(icon: AppIcons.addToCollection) {
                        print("NOT IMPLEMENTED: Add to Collections Button")
                    }
                }
                
                Text("\(duration) · \(location)")
                    .foregroundColor(Color.primary.opacity(0.5))
                    .font(.caption)
            }
            .padding(24)
        }
    }
}
