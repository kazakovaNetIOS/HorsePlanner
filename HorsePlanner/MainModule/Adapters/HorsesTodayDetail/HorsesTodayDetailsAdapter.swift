//
//  HorsesTodayDetailsAdapter.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct HorsesTodayDetailsAdapter: HorsesTodayDetailsLoader {
    var api: ApiClient
    
    func loadHorsesTodayDetails(completion: @escaping (Horse) -> Void) {
        api.loadHorsesTodayDetails { horse in
            print("horsesTodayDetailsAdapter.loadHorsesTodayDetails process")
            completion(horse)
        }
    }
}
