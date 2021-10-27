//
//  TrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

enum LoadTrainingsTodayResult {
    case success([TrainingsTodayItem])
    case error(Error)
}

protocol TrainingsTodayLoader {
    func load(completion: @escaping (LoadTrainingsTodayResult) -> Void)
}
