//
//  PostData.swift
//  NewsReader
//
//  Created by Pathompong Phongsaporamut on 4/11/20.
//

import Foundation

struct  Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    let points: Int
    let title: String
    let url: String?
    let objectID: String
    
    var id: String {
        return objectID
    }
}
