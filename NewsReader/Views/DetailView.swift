//
//  DetailView.swift
//  NewsReader
//
//  Created by Pathompong Phongsaporamut on 4/11/20.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
