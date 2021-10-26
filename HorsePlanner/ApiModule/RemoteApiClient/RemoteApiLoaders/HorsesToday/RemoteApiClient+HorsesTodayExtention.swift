//
//  RemoteApiClient+HorsesTodayExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension RemoteApiClient {
    func loadHorsesToday(completion: ([Horse]) -> Void) {
        print("remoteApiClient.loadHorsesToday process")
        completion([.arbitrary(id: 1), .arbitrary(id: 2)])
    }
}
