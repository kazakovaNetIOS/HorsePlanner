//
//  RemoteApiClient.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

class RemoteApiClient {
    static let shared = RemoteApiClient()
    private init() {}
    
    func execute<T: Decodable>(_: URLRequest, completion: @escaping (T) -> Void) {
        // some work from api
    }
}


