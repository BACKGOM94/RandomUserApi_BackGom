//
//  ProfilleImgView.swift
//  RandomUserApi_BackGom
//
//  Created by Hoony on 2024/01/25.
//

import Foundation
import SwiftUI
import URLImage

struct ProfilleImgView : View {
    
    var imageUrl : URL
    
    var body : some View {
        
        URLImage(imageUrl,
                 content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 60)
        }).clipShape(Circle())
            .overlay(Circle().stroke(Color.init(.yellow),
                                    lineWidth: 2))
    }
}

struct ProfilleImgView_Previews: PreviewProvider {
    static var previews: some View {
        
        let url = URL(string: "https://randomuser.me/api/portraits/women/17.jpg")!
        
        ProfilleImgView(imageUrl: url)
    }
}
