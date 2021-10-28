//
//  RemoteTrainingsTodayLoaderTests.swift
//  HorsePlannerTests
//
//  Created by Kazakova Nataliya on 28.10.2021.
//

import XCTest
import HorsePlanner

class RemoteTrainingsTodayLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let (_, client) = makeSUT()
        XCTAssertTrue(client.requestedURLs.isEmpty)
    }
    
    func test_load_requestsDataFromURL() {
        let url = URL(string: "http://a-givenw-url.com")!
        let (sut, client) = makeSUT(url: url)
        
        sut.load()
        
        XCTAssertEqual(client.requestedURLs, [url])
    }
    
    func test_loadTwice_requestsDataFromURLTwice() {
        let url = URL(string: "http://a-givenw-url.com")!
        let (sut, client) = makeSUT(url: url)
        
        sut.load()
        sut.load()
        
        XCTAssertEqual(client.requestedURLs, [url, url])
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
        var requestedURLs = [URL]()
        
        func get(from url: URL) {
            requestedURLs.append(url)
        }
    }
}
