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
        HTTPClient.shared.get(from: URL(string: "http://a-url.com")!)
    }
}

class HTTPClient {
    static var shared = HTTPClient()
    
    func get(from url: URL) {}
}

class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?
    
    override func get(from url: URL) {
        requestedURL = url
    }
}

class RemoteTrainingsTodayLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        _ = RemoteTrainingsTodayLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL(){
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteTrainingsTodayLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }

}
