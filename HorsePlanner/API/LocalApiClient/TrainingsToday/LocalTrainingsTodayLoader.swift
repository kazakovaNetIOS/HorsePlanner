//
//  LocalTrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct LocalTrainingsTodayLoader: TrainingsTodayLoader {
    private var api: LocalApiClient
    
    func load(completion: @escaping ([Horse]) -> Void) {
        print("localApiTrainingsTodayLoader.loadTrainingsToday process")
        api.loadTrainingsToday { horses in
            completion(horses)
        }
    }
}
