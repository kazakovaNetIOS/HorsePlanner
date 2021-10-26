//
//  LocalApiHorsesTodayDetailsLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct LocalApiHorsesTodayDetailsLoader: HorsesTodayDetailsLoader {
    private var api: LocalApiClient
    
    func loadHorsesTodayDetails(completion: @escaping (Horse) -> Void) {
        print("localApiHorsesTodayDetailsLoader.loadHorsesTodayDetails process")
        api.loadHorsesTodayDetails { horse in
            completion(horse)
        }
    }
}
