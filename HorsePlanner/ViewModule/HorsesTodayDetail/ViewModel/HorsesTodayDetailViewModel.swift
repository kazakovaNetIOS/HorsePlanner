//
//  HorsesTodayDetailViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

struct HorsesTodayDetailViewModel {
    var loader: HorsesTodayDetailsLoader?
    
    func initialize() {
        loader?.loadHorsesTodayDetails { horse in
            print("loadHorsesTodayDetails completion", horse)
        }
    }
}
