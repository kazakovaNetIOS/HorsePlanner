//
//  TrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

public enum LoadTrainingsTodayResult {
    case success([TrainingsTodayItem])
    case failure(Error)
}

public protocol TrainingsTodayLoader {
    func load(completion: @escaping (LoadTrainingsTodayResult) -> Void)
}
