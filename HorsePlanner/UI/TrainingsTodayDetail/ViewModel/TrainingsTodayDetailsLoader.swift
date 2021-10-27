//
//  TrainingsTodayDetailsLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

protocol TrainingsTodayDetailsLoader {
    func loadTrainingsTodayDetails(completion: @escaping (Horse) -> Void)
}
