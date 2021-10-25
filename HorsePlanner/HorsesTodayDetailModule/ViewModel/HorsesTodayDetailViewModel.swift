//
//  HorsesTodayDetailViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

struct HorsesTodayDetailViewModel {
    var loadHorsesTodayDetail: ((Result<Horse>) -> Void)?
    
    func initialize() {
        loadHorsesTodayDetail? { horse in
            print("loadHorsesTodayDetail completion", horse)
        }
    }
}
