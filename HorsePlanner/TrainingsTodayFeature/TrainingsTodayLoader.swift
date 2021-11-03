//
//  TrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

public enum LoadTrainingsTodayResult<Error: Swift.Error> {
    case success([TrainingsTodayItem])
    case failure(Error)
}

protocol TrainingsTodayLoader {
    associatedtype Error: Swift.Error
    
    func load(completion: @escaping (LoadTrainingsTodayResult<Error>) -> Void)
}
