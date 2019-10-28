//
//  PosteFooter.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import SwiftUI

struct PosteFooter: View {
    
    var likes: Int
    var liked: Bool
    var saved: Bool
    let comment: String
    
    var body: some View {
        
         VStack(alignment: .leading) {
                       
                       HStack(spacing: 16) {
                           IconChangableButton(name: "heart", isActive: liked)
                           
                           IconButton(name: "bubble.left")
                           Spacer()
                           
                           IconChangableButton(name: "flag", isActive: saved)
                           
                       }
                       
            Text("\(likes) \(likes > 1 ? "like" : "likes")")
                           .font(.headline)
                       
                       Text(comment)
                           .lineLimit(3)
                       
                   }.padding()    }
}

struct PosteFooter_Previews: PreviewProvider {
    static var previews: some View {
        PosteFooter(likes: 12, liked: true, saved: false, comment:"Ceci est une description du poste de plusieurs lignes. Nous souhaitons que ce texte soit coupé s'il contient plus de 2 lignes.")
    }
}
