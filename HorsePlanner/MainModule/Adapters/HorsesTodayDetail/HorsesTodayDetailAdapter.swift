//
//  HorsesTodayDetailAdapter.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 25.10.2021.
//

import Foundation

struct HorsesTodayDetailAdapter {
    var api: ApiClient
    
    func loadHorsesTodayDetail() {
        api.loadHorsesTodayDetail { horse in
            _ = HorsesTodayDetailViewModel { completion in
                completion(horse)
            }
        }
    }
}
