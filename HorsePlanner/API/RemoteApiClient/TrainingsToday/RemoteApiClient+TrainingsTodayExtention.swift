//
//  RemoteApiClient+TrainingsTodayExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension RemoteApiClient {
    func loadTrainingsToday(completion: ([Horse]) -> Void) {
        print("remoteApiClient.loadTrainingsToday process")
        completion([.arbitrary(id: 1), .arbitrary(id: 2)])
    }
}
