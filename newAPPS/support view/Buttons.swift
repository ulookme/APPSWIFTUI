//
//  Buttons.swift
//  newAPPS
//
//  Created by ano on 28/10/2019.
//  Copyright © 2019 hajjar. All rights reserved.
//

import SwiftUI

struct IconButton: View {
    let name : String
    var body: some View {
        Image(systemName: name)
        .resizable()
        .frame(width: 30, height: 30)
        .foregroundColor(.gray)
        
    }
}

struct IconChangableButton: View {
    let name : String
    var isActive : Bool
    
    var body: some View {
        Image(systemName: isActive ? "\(name).fill": name)
        .resizable()
        .frame(width: 30, height: 30)
        .foregroundColor(
            isActive ? (name == "heart" ? .red : .black) : .gray
        )
        
    }
}


struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IconButton(name: "paperplane")
            
            IconChangableButton(name: "heart", isActive: true)
            IconChangableButton(name: "heart", isActive: false)
            
            IconButton(name: "bubble.left")
            
            IconChangableButton(name: "flag", isActive: true)
            IconChangableButton(name: "flag", isActive: false)
        }.previewLayout(.sizeThatFits)
        
    }
}

