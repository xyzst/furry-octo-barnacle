//
//  ContentView.swift
//  iHackerNews
//
//  Created by Darren Rambaud on 3/23/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject
    var networkMgr = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkMgr.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("yCombinator News")
        }
        .onAppear {
            self.networkMgr.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
