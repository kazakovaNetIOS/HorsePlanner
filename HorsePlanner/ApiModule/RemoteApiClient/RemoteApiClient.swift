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
    
    func execute(_: URLRequest, completion: @escaping (Data) -> Void) {}
}


