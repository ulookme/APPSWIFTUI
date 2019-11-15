//
//  Post.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import Foundation


struct Post {
    let profilePictureName: String
    let imageName: String
    
    let userName: String
    let date: Int
    
    var liked: Bool
    var likes: Int
    var saved: Bool
    
    let comment: String
}
