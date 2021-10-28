 //
//  RemoteTrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 28.10.2021.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public final class RemoteTrainingsTodayLoader {
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL,
         client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load() {
        client.get(from: url)
    }
}
