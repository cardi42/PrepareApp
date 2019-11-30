//
//  GetPostsResponse.swift
//  PrepareApp
//
//  Created by Mac1 on 11/30/19.
//  Copyright © 2019 Mac1. All rights reserved.
//

import Foundation

struct GetPostsResponse {
    let posts: [Post]
    
    init(json: Any) throws {
        guard let items = json as? [[String: Any]] else {
            throw NetworkingError.jsonError
        }
        
        var posts = [Post]()
        for item in items {
            guard let post = Post(dict: item) else { continue }
            posts.append(post)
        }
        self.posts = posts
    }
    
}
