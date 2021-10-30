//
//  DateFormatter+Extentions.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 30.10.2021.
//

import Foundation

public extension DateFormatter {
    static let full: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd'T'HH:mm:ss.SSSZZZZZ"
        formatter.locale = Locale(identifier: "ru_RU_POSIX")
        return formatter
    }()
}
