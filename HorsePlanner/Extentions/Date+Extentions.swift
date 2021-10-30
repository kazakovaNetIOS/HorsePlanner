//
//  Date+Extentions.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 30.10.2021.
//

import Foundation

public extension Date {
    var toFullFormatString: String {
        DateFormatter.full.string(from: self)
    }
}
