//
//  TrainingsTodayItem.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 28.10.2021.
//

import Foundation

public struct TrainingsTodayItem: Equatable {
    public let id: UUID
    public let horseName: String
    public let date: Date?
    public let location: String
    
    public init(id: UUID,
                horseName: String,
                date: Date?,
                location: String) {
        self.id = id
        self.horseName = horseName
        self.date = date
        self.location = location
    }
}
