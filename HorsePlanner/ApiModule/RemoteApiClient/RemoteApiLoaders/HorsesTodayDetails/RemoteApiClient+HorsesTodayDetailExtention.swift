//
//  RemoteApiClient+HorsesTodayDetailExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension RemoteApiClient {
    func loadHorsesTodayDetails(completion: (Horse) -> Void) {
        print("remoteApiClient.loadHorsesTodayDetail process")
        completion(.arbitrary(id: 1))
    }
}
