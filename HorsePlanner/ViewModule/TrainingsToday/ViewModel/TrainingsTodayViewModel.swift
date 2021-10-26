//
//  TrainingsTodayViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

struct TrainingsTodayViewModel {
    var loader: TrainingsTodayLoader?
    
    func initialize() {
        loader?.loadTrainingsToday { horses in
            print("loadTrainingsToday completion", horses)
        }
    }
}
