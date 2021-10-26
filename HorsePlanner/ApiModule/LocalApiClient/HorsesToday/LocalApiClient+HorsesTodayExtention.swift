//
//  LocalApiClient+HorsesTodayExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

extension LocalApiClient {
    func loadHorsesToday(completion: ([Horse]) -> Void) {
        let horses: [Horse] = load(from: "horsesToday.json")
        completion(horses)
    }
}
