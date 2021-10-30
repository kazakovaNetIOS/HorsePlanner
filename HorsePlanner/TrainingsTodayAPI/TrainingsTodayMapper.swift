//
//  TrainingsTodayMapper.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 30.10.2021.
//

import Foundation

internal final class TrainingsTodayMapper {
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
    
    private static var OK_200: Int { 200 }
    
    internal static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [TrainingsTodayItem] {
        guard response.statusCode == OK_200 else {
            throw RemoteTrainingsTodayLoader.Error.invalidData
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(DateFormatter.full)
        
        let root = try decoder.decode(Root.self, from: data)
        return root.items.map { $0.item }
    }
}
