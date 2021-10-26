//
//  LocalApiTrainingsTodayDetailsLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct LocalApiTrainingsTodayDetailsLoader: TrainingsTodayDetailsLoader {
    private var api: LocalApiClient
    
    func loadTrainingsTodayDetails(completion: @escaping (Horse) -> Void) {
        print("localApiTrainingsTodayDetailsLoader.loadTrainingsTodayDetails process")
        api.loadTrainingsTodayDetails { horse in
            completion(horse)
        }
    }
}
