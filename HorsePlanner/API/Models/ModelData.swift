//
//  ModelData.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 17.10.2021.
//

import Foundation

let horses: [Horse] = loadGlobal("TrainingsToday.json")
let globalHorse: Horse = loadGlobal("TrainingsTodayDetail.json")

func loadGlobal<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
