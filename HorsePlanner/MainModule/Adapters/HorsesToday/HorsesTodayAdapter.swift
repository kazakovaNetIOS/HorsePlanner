//
//  HorsesTodayAdapter.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct HorsesTodayAdapter {
    var api: ApiClient
    
    func loadHorsesToday() {
        api.loadHorsesToday { horses in
            _ = HorsesTodayViewModel { completion in
                completion(horses)
            }
        }
    }
}
