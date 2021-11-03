//
//  RemoteTrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 28.10.2021.
//

import Foundation

public final class RemoteTrainingsTodayLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public typealias Result = LoadTrainingsTodayResult<Error>
    
    public init(url: URL,
                client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { [weak self] result in
            guard self != nil else { return }
            
            switch result {
            case let .success(data, response):
                completion(TrainingsTodayMapper.map(data, from: response))
            case .failure:
                completion(.failure(.connectivity))
            }
        }
    }
}
