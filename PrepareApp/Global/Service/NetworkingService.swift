//
//  NetworkingService.swift
//  PrepareApp
//
//  Created by Mac1 on 11/30/19.
//  Copyright © 2019 Mac1. All rights reserved.
//

import Foundation

class NetworkingService {
    
    private init() {}
    static let shared = NetworkingService()
    
    func getData(fromURL url: URL, completion: @escaping (Any) -> Void) {
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            } catch {}
        }
        task.resume()
    }
}
