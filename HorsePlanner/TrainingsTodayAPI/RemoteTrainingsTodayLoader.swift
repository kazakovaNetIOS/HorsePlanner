//
//  RemoteTrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 28.10.2021.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

public final class RemoteTrainingsTodayLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public enum Result: Equatable {
        case success([TrainingsTodayItem])
        case failure(Error)
    }
    
    public init(url: URL,
                client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { result in
            switch result {
            case let .success(data, response):
                do {
                    let items = try TrainingsTodayMapper.map(data, response)
                    completion(.success(items))
                } catch {
                    completion(.failure(.invalidData))
                }
            case .failure:
                completion(.failure(.connectivity))
            }
        }
    }
}

private class TrainingsTodayMapper {
    private struct Root: Decodable {
        let items: [Item]
    }

    private struct Item: Decodable {
        let id: UUID
        let horseName: String
        let date: Date?
        let location: String
        
        var item: TrainingsTodayItem {
            TrainingsTodayItem(id: id,
                               horseName: horseName,
                               date: date,
                               location: location)
        }
    }
    
    static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [TrainingsTodayItem] {
        guard response.statusCode == 200 else {
            throw RemoteTrainingsTodayLoader.Error.invalidData
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(DateFormatter.full)
        
        let root = decoder.decode(Root.self, from: data)
        return try root.items.map { $0.item }
    }
}
