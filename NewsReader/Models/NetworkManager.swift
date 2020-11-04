//
//  NetworkManager.swift
//  NewsReader
//
//  Created by Pathompong Phongsaporamut on 4/11/20.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
         
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let hasData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: hasData)
                        } catch {
                            print(error)
                        }
                    }
                    
                }
            }
            
            task.resume()
            
        }
        
    }
    
}
