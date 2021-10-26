//
//  LocalApiClient+TrainingsTodayDetailsExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

extension LocalApiClient {
    func loadTrainingsTodayDetails(completion: (Horse) -> Void) {
        let horse: Horse = load(from: "TrainingsTodayDetail.json")
        completion(horse)
    }
}
