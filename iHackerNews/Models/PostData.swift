//
//  PostData.swift
//  iHackerNews
//
//  Created by Darren Rambaud on 3/23/20.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import Foundation

struct PostData: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID // computed property, objectID == id
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
