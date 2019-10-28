//
//  PosteHeader.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import SwiftUI

struct PosteHeader: View {
    
    let profilePicture: String
    let userName: String
    let hours: Int
    
    var body: some View {
        HStack {
            Image(profilePicture)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(userName)
                    .font(.headline)
                
                Text("Posté il y a \(hours) heure")
                    .font(.subheadline)
            }
            
            Spacer()
            
            IconButton(name: "paperplane")
        
        }.padding() // La valeur du padding est fournie par defaut
        
    }
        
}

struct PosteHeader_Previews: PreviewProvider {
    static var previews: some View {
        PosteHeader(profilePicture: "profile1", userName: "charles", hours: 3)
            .previewLayout(.sizeThatFits) // elle permet d'afficher que l'entéte 
    }
}
