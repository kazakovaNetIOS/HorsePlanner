//
//  RemoteTrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct RemoteTrainingsTodayLoader: TrainingsTodayLoader {
    private var api: RemoteApiClient
    
    func load(completion: @escaping ([Horse]) -> Void) {
        print("remoteTrainingsTodayLoader.loadTrainingsToday process")
        api.loadTrainingsToday { horses in
            completion(horses)
        }
    }
}
