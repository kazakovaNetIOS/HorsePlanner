//
//  HorsesTodayDetailViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

struct HorsesTodayDetailViewModel {
    var api = ApiClient.shared
    
    func initialize() {
        api.loadHorsesTodayDetail { horse in
            print("loadHorsesTodayDetail completion", horse)
        }
    }
}
