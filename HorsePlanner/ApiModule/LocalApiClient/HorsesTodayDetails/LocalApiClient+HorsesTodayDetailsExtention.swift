//
//  LocalApiClient+HorsesTodayDetailsExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

extension LocalApiClient {
    func loadHorsesTodayDetails(completion: (Horse) -> Void) {
        let horse: Horse = load(from: "horsesTodayDetail.json")
        completion(horse)
    }
}
