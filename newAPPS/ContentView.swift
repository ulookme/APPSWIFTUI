//
//  ContentView.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import SwiftUI


struct ContentView : View {
    var body: some View {
        VStack {
            
            // MARK: Header
            
            HStack {
                Image("profile1")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Charles")
                        .font(.headline)
                    
                    Text("Posté il y a 3 heures")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Image(systemName: "paperplane")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
            
            }.padding() // La valeur du padding est fournie par defaut
            
            // MARK: Image
            
            Image("post1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // MARK: Footer
            
            VStack(alignment: .leading) {
                
                HStack(spacing: 16) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                    
                    Image(systemName: "bubble.left")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Image(systemName: "flag")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }
                
                Text("23 likes")
                    .font(.headline)
                
                Text("Ceci est une description du poste de plusieurs lignes. Nous souhaitons que ce texte soit coupé s'il contient plus de 2 lignes.")
                    .lineLimit(3)
                
            }.padding()
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
#endif
