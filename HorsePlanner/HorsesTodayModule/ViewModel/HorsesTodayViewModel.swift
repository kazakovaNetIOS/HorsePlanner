//
//  HorsesTodayViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

struct HorsesTodayViewModel {
    var loader: HorsesTodayLoader?
    
    func initialize() {
        loader?.loadHorsesToday { horses in
            print("loadHorsesToday completion", horses)
        }
    }
}
