//
//  Horse.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import Foundation
import SwiftUI

struct Horse: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let age: Int
    let owner: String
    private let imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    init(id: Int, name: String, age: Int, owner: String, imageName: String) {
        self.id = id
        self.name = name
        self.age = age
        self.owner = owner
        self.imageName = imageName
    }
}
