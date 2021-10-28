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

class RemoteTrainingsTodayLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let (_, client) = makeSUT()
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let url = URL(string: "http://a-givenw-url.com")!
        let (sut, client) = makeSUT(url: url)
        
        sut.load()
        
        XCTAssertEqual(client.requestedURL, url)
    }
    
    // MARK: - Helpers
    
    private func makeSUT(url: URL = URL(string: "http://a-givenw-url.com")!)
    ->    (sut: RemoteTrainingsTodayLoader,
           client: HTTPClientSpy) {
        let client = HTTPClientSpy()
        let sut = RemoteTrainingsTodayLoader(url: url, client: client)
        return (sut, client)
    }
    
    private class HTTPClientSpy: HTTPClient {
        var requestedURL: URL?
        
        func get(from url: URL) {
            requestedURL = url
        }
    }
}
