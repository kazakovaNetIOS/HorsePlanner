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
    let client: HTTPClient
    let url: URL
    
    init(url: URL,
         client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    func load() {
        client.get(from: url)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?
    
     func get(from url: URL) {
        requestedURL = url
    }
}

class RemoteTrainingsTodayLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let url = URL(string: "http://a-givenw-url.com")!
        let client = HTTPClientSpy()
        _ = RemoteTrainingsTodayLoader(url: url, client: client)
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let url = URL(string: "http://a-givenw-url.com")!
        let client = HTTPClientSpy()
        let sut = RemoteTrainingsTodayLoader(url: url, client: client)
        
        sut.load()
        
        XCTAssertEqual(client.requestedURL, url)
    }

}
