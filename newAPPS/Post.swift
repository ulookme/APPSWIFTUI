//
//  ContentView.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import SwiftUI


struct Post : View {
    var body: some View {
        VStack {
            
            // MARK: Header
            
            PosteHeader(profilePicture: "profile1", userName: "charles", hours: 3)
            // MARK: Image
            
            Image("post1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // MARK: Footer
            
           PosteFooter(likes: 12, liked: true, saved: false, comment:"Ceci est une description du poste de plusieurs lignes. Nous souhaitons que ce texte soit coupé s'il contient plus de 2 lignes.")
        }
    }
}

#if DEBUG
struct Post_Previews : PreviewProvider {
    static var previews: some View {
        Post()
            .previewLayout(.sizeThatFits)
    }
}
#endif
