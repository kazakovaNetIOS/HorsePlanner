//
//  RemoteTrainingsTodayLoaderTests.swift
//  HorsePlannerTests
//
//  Created by Kazakova Nataliya on 28.10.2021.
//

import XCTest

//struct RemoteTrainingsTodayLoader: TrainingsTodayLoader {
//    private var api: RemoteApiClient
//
//    func load(completion: @escaping ([Horse]) -> Void) {
//        print("remoteTrainingsTodayLoader.loadTrainingsToday process")
//        api.loadTrainingsToday { horses in
//            completion(horses)
//        }
//    }
//}

class RemoteTrainingsTodayLoader{
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteTrainingsTodayLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteTrainingsTodayLoader()
        
        XCTAssertNil(client.requestedURL)
    }

}
