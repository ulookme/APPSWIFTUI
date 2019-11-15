//
//  Data.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation

let downloadedPosts = loadPosts()

func loadPosts() -> [Post] {
    let posts: [Post] = [
        Post(profilePictureName: "profile1", imageName: "post1", userName: "Username1", date: 3, liked: false, likes: 0, saved: false, comment: "Commentaire..."),
        
        Post(profilePictureName: "profile2", imageName: "post2", userName: "Username2", date: 5, liked: false, likes: 0, saved: false, comment: "Commentaire..."),
        
        Post(profilePictureName: "profile3", imageName: "post3", userName: "Username3", date: 7, liked: false, likes: 0, saved: false, comment: "Commentaire...")
    ]
    
    return posts
}

