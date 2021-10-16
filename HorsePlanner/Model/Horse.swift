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
}
