//
//  TrainingsTodayViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

class TrainingsTodayViewModel {
    var loader: TrainingsTodayLoader?
    var horses: [Horse]?
    
    func initialize() {
        loader?.load {[weak self] horses in
            print("loadTrainingsToday completion", horses)
            self?.horses = horses
        }
    }
}
