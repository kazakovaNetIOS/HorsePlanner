//
//  Arbitrary.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 24.10.2021.
//

import Foundation

extension Horse {
    static func arbitrary(id: Int = 1 ,
                          name: String = "abc",
                          age: Int = 1,
                          owner: String = "abc",
                          imageName: String = "abc") -> Horse {
        Horse(
            id: id,
            name: name,
            age: age,
            owner: owner,
            imageName: imageName)
    }
}
