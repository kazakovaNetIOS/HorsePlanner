//
//  LocalApiClient+TrainingsTodayExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

extension LocalApiClient {
    func loadTrainingsToday(completion: ([Horse]) -> Void) {
        let horses: [Horse] = load(from: "TrainingsToday.json")
        completion(horses)
    }
}
