//
//  TrainingsTodayDetailViewModel.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

class TrainingsTodayDetailViewModel {
    var loader: TrainingsTodayDetailsLoader?
    var horse: Horse?
    
    func initialize() {
        loader?.loadTrainingsTodayDetails {[weak self] horse in
            print("loadTrainingsTodayDetails completion", horse)
            self?.horse = horse
        }
    }
}
