//
//  ApiClient.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

class ApiClient {
    static let shared = ApiClient()
    private init() {}
    
    func execute(_: URLRequest, completion: @escaping (Data) -> Void) {}
}


