//
//  RemoteTrainingsTodayLoader1.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct RemoteTrainingsTodayLoader1: TrainingsTodayLoader {
    private var api: RemoteApiClient
    
    func load(completion: @escaping (LoadTrainingsTodayResult) -> Void) {
        print("remoteTrainingsTodayLoader.loadTrainingsToday process")
        api.loadTrainingsToday { horses in
            completion(horses)
        }
    }
}
