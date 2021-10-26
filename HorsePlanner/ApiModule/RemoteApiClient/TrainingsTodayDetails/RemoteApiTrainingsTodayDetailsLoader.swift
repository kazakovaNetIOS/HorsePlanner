//
//  RemoteApiTrainingsTodayDetailsLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct RemoteApiTrainingsTodayDetailsLoader: TrainingsTodayDetailsLoader {
    private var api: RemoteApiClient
    
    func loadTrainingsTodayDetails(completion: @escaping (Horse) -> Void) {
        api.loadTrainingsTodayDetails { horse in
            print("RemoteApiTrainingsTodayDetailsLoader.loadTrainingsTodayDetails process")
            completion(horse)
        }
    }
}
