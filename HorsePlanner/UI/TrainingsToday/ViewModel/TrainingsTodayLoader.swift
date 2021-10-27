//
//  TrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

protocol TrainingsTodayLoader {
    func loadTrainingsToday(completion: @escaping ([Horse]) -> Void)
}
