//
//  Model.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 30/05/22.
//

import SwiftUI
import UIKit

struct UnsplashImage: Identifiable, Codable {
    var id: String
    var created_at: String
    var updated_at: String
    var width: Int
    var height: Int
    var color: String
    var blur_hash: String
    var likes: Int
    var liked_by_user: Bool
    var description: String
    
    var user: UnsplashUser
    
    struct UnsplashUser: Identifiable, Codable {
        var id: String
        var username: String
        var name: String
        var portfolio_url: String
        var bio: String
        var location: String
        var total_likes: Int
        var total_photos: Int
        var total_collections: Int
        var instagram_username: String
        var twitter_username: String
        var profile_image: UnsplashProfileImageUrls
        
        
        struct UnsplashProfileImageUrls: Codable {
            var small: String
            var medium: String
            var large: String
        }
        
        var links: UnsplashUserLinks
        
        struct UnsplashUserLinks: Codable {
            // var self: String
            var html: String
            var photos: String
            var likes: String
            var portfolio: String
        }
    }
    
    // The *current user's* collections that this photo belongs to.
    var current_user_collections: [UnsplashUserCurrentCollections]
    struct UnsplashUserCurrentCollections: Identifiable, Codable {
        var id: String
        var title: String
        var published_at: String
        var last_collected_at: String
        var updated_at: String
        var cover_photo: String
        var user: String
    }
    
    var urls: UnsplashImageURL
    struct UnsplashImageURL: Codable {
        var raw: String
        var full: String
        var regular: String
        var small: String
        var thumb: String
    }
    
    var links: UnsplashImageLinks
    struct UnsplashImageLinks: Codable {
        // var self: String
        var html: String
        var download: String
        var download_location: String
    }
}
