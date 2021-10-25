//
//  HorsesTodayViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

struct HorsesTodayViewModel {
    var loadHorsesToday: ((Result<[Horse]>) -> Void)?
    
    func initialize() {
        loadHorsesToday? { horses in
            print("loadHorsesToday completion", horses)
        }
    }
}
