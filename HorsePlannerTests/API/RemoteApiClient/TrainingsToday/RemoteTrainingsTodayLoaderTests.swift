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
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "http://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    private init() {}
    
    var requestedURL: URL?
}

class RemoteTrainingsTodayLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteTrainingsTodayLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL(){
        let client = HTTPClient.shared
        let sut = RemoteTrainingsTodayLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }

}
