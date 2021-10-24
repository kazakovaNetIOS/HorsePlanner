//
//  ApiClient+HorsesTodayDetailExtention.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension ApiClient {
    func loadHorsesTodayDetail(completion: (Horse) -> Void) {
        print("loadHorsesTodayDetail process")
        completion(.arbitrary(id: 1))
    }
}
