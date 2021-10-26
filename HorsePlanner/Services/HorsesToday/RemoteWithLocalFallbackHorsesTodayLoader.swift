//
//  RemoteWithLocalFallbackHorsesTodayLoader.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct Reachability {
    static let networkAvailable = false
}

class RemoteWithLocalFallbackHorsesTodayLoader {
    let remote: RemoteHorsesTodayLoader
    let local: LocalHorsesTodayLoader
    
    init(remote: RemoteHorsesTodayLoader, local: LocalHorsesTodayLoader) {
        self.remote = remote
        self.local = local
    }
}

extension RemoteWithLocalFallbackHorsesTodayLoader: HorsesTodayLoader {
    func loadHorsesToday(completion: @escaping([Horse]) -> Void) {
        let load =  Reachability.networkAvailable ?
        remote.loadHorsesToday : local.loadHorsesToday
        
        load(completion)
    }
}
