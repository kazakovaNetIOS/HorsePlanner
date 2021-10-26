//
//  RemoteApiHorsesTodayDetailsLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct RemoteApiHorsesTodayDetailsLoader: HorsesTodayDetailsLoader {
    private var api: RemoteApiClient
    
    func loadHorsesTodayDetails(completion: @escaping (Horse) -> Void) {
        api.loadHorsesTodayDetails { horse in
            print("horsesTodayDetailsAdapter.loadHorsesTodayDetails process")
            completion(horse)
        }
    }
}
