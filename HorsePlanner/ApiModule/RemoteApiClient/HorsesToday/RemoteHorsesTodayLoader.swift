//
//  RemoteHorsesTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct RemoteHorsesTodayLoader: HorsesTodayLoader {
    private var api: RemoteApiClient
    
    func loadHorsesToday(completion: @escaping ([Horse]) -> Void) {
        print("horsesTodayAdapter.loadHorsesToday process")
        api.loadHorsesToday { horses in
            completion(horses)
        }
    }
}
