//
//  HorsesTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

protocol HorsesTodayLoader {
    func loadHorsesToday(completion: @escaping ([Horse]) -> Void)
}
