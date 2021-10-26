//
//  TrainingsTodayDetailViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

struct TrainingsTodayDetailViewModel {
    var loader: TrainingsTodayDetailsLoader?
    
    func initialize() {
        loader?.loadTrainingsTodayDetails { horse in
            print("loadTrainingsTodayDetails completion", horse)
        }
    }
}
