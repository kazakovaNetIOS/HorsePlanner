//
//  ApiClient+HorsesTodayExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension ApiClient {
    func loadHorsesToday(completion: ([Horse]) -> Void) {
        print("api.loadHorsesToday process")
        completion([.arbitrary(id: 1), .arbitrary(id: 2)])
    }
}
