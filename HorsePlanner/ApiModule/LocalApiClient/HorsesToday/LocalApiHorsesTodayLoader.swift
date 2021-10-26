//
//  LocalApiHorsesTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct LocalApiHorsesTodayLoader: HorsesTodayLoader {
    private var api: LocalApiClient
    
    func loadHorsesToday(completion: @escaping ([Horse]) -> Void) {
        print("localApiHorsesTodayLoader.loadHorsesToday process")
        api.loadHorsesToday { horses in
            completion(horses)
        }
    }
}
