//
//  RemoteWithLocalFallbackTrainingsTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct Reachability {
    static let networkAvailable = false
}

class RemoteWithLocalFallbackTrainingsTodayLoader {
    let remote: RemoteTrainingsTodayLoader
    let local: LocalTrainingsTodayLoader
    
    init(remote: RemoteTrainingsTodayLoader, local: LocalTrainingsTodayLoader) {
        self.remote = remote
        self.local = local
    }
}

extension RemoteWithLocalFallbackTrainingsTodayLoader: TrainingsTodayLoader {
    func load(completion: @escaping (LoadTrainingsTodayResult) -> Void) {
        let load =  Reachability.networkAvailable ?
        remote.load : local.load
        
//        load(completion)
    }
}
