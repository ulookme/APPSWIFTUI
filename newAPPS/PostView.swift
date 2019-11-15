//
//  ContentView.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import SwiftUI

struct PostView : View {
    
    let post: Post
    
    var body: some View {
        VStack {
            
            // MARK: Header
            
            PostHeader(profilePicture: post.profilePictureName, userName: post.userName, hours: post.date)
            
            // MARK: Image
            
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // MARK: Footer
            
            PostFooter(likes: post.likes, liked: post.liked, saved: post.saved, comment: post.comment)
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            PostView(post: downloadedPosts[0])
            PostView(post: downloadedPosts[1])
            PostView(post: downloadedPosts[2])
        }.previewLayout(.sizeThatFits)
    }
}
#endif
