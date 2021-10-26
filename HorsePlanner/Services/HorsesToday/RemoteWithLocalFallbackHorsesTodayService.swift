//
//  RemoteWithLocalFallbackHorsesTodayService.swift
//  HorsePlanner
//
//  Created by Kazakova Nataliya on 26.10.2021.
//

import Foundation

struct Reachability {
    static let networkAvailable = false
}

class RemoteWithLocalFallbackHorsesTodayService {
    let remote: RemoteHorsesTodayLoader
    let local: LocalHorsesTodayLoader
    
    init(remote: RemoteHorsesTodayLoader, local: LocalHorsesTodayLoader) {
        self.remote = remote
        self.local = local
    }
    
    func loadHorsesToday(completion: @escaping([Horse]) -> Void) {
        if Reachability.networkAvailable {
            remote.loadHorsesToday(completion: completion)
        } else {
            local.loadHorsesToday(completion: completion)
        }
    }
}
