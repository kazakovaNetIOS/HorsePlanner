//
//  RemoteApiClient+TrainingsTodayDetailExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension RemoteApiClient {
    func loadTrainingsTodayDetails(completion: (Horse) -> Void) {
        print("remoteApiClient.loadTrainingsTodayDetails process")
        completion(.arbitrary(id: 1))
    }
}
