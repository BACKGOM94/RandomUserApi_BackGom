//
//  ContentView.swift
//  RandomUserApi_BackGom
//
//  Created by Hoony on 2024/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var randomUserViewModel = RandomUserViewModel()
    
    var body: some View {
        
        List(randomUserViewModel.randomUsers) { aRandomUser in
            RandomUserRowView(aRandomUser)
        }
        
//        List(0 ... 100, id: \.self){index in
//            RandomUserRowView()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
