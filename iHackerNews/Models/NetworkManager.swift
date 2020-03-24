//
//  NetworkManager.swift
//  iHackerNews
//
//  Created by Darren Rambaud on 3/23/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject { // pub/sub pattern
    
    @Published
    var posts = [Post]()
    
    func fetch() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let d = data {
                        do {
                            let results = try decoder.decode(PostData.self, from: d)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
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
