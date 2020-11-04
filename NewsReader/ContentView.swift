//
//  ContentView.swift
//  NewsReader
//
//  Created by Pathompong Phongsaporamut on 4/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("Hacker News")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
    
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "World"),
    Post(id: "3", title: "Dee"),
    Post(id: "4", title: "Ja")
]