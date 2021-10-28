//
//  LocalTrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct LocalTrainingsTodayLoader: TrainingsTodayLoader {
    private var api: LocalApiClient
    
    func load(completion: @escaping (LoadTrainingsTodayResult) -> Void) {
        print("localApiTrainingsTodayLoader.loadTrainingsToday process")
        api.loadTrainingsToday { result in
            switch result {
            case .success(let items):
                completion(.success(items))
            case .error(let error):
                print(error)
            }
        }
    }
}
