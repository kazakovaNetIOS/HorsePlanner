//
//  HorsesTodayDetailsLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

protocol HorsesTodayDetailsLoader {
    func loadHorsesTodayDetails(completion: @escaping (Horse) -> Void)
}
