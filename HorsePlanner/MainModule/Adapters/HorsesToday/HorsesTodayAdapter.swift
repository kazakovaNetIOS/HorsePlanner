//
//  HorsesTodayAdapter.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct HorsesTodayAdapter: HorsesTodayLoader {
    var api: ApiClient
    
    func loadHorsesToday(completion: @escaping ([Horse]) -> Void) {
        print("horsesTodayAdapter.loadHorsesToday process")
        api.loadHorsesToday { horses in
            completion(horses)
        }
    }
}
