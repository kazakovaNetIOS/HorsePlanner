//
//  ApiClient+HorsesTodayDetailExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension ApiClient {
    func loadHorsesTodayDetails(completion: (Horse) -> Void) {
        print("api.loadHorsesTodayDetail process")
        completion(.arbitrary(id: 1))
    }
}
