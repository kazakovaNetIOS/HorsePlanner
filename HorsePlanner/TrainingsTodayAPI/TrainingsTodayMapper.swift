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
        
        var trainings: [TrainingsTodayItem] {
            items.map { $0.item }
        }
    }
    
    private struct Item: Decodable {
        let id: UUID
        let horsename: String
        let date: Date?
        let location: String
        
        var item: TrainingsTodayItem {
            TrainingsTodayItem(id: id,
                               horseName: horsename,
                               date: date,
                               location: location)
        }
    }
    
    private static var OK_200: Int { 200 }
    
    internal static func map(_ data: Data,
                             from response: HTTPURLResponse) -> RemoteTrainingsTodayLoader.Result {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(DateFormatter.full)
        
        guard response.statusCode == OK_200,
              let root = try? decoder.decode(Root.self, from: data) else {
                  return .failure(RemoteTrainingsTodayLoader.Error.invalidData)
              }
        
        return .success(root.trainings)
    }
}
