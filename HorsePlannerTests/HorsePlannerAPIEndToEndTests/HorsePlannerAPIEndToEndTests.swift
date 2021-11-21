//
//  HorsePlannerAPIEndToEndTests.swift
//  HorsePlannerAPIEndToEndTests
//
//  Created by Kazakova Nataliya on 17.11.2021.
//

import XCTest
import HorsePlanner

class HorsePlannerAPIEndToEndTests: XCTestCase {
    
    func test_endToEndTestServerGETTrainingsTodayResult_matchesFixedTestAccountData() {
        let testServerURL = URL(string: "http://a0594209.xsph.ru/TrainingsTodayJson.json")!
        let client =  URLSessionHTTPClient()
        let loader = RemoteTrainingsTodayLoader(url: testServerURL, client: client)
        
        let exp = expectation(description: "Wait for load completion")
        
        var receivedResult: LoadTrainingsTodayResult?
        loader.load { result in
            receivedResult = result
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5.0)
        
        switch receivedResult {
        case let .success(items)?:
            XCTAssertEqual(items.count, 8, "Expected 8 items in the test account trainings")
            XCTAssertEqual(items[0], expectedItem(at: 0))
            XCTAssertEqual(items[1], expectedItem(at: 1))
            XCTAssertEqual(items[2], expectedItem(at: 2))
            XCTAssertEqual(items[3], expectedItem(at: 3))
            XCTAssertEqual(items[4], expectedItem(at: 4))
            XCTAssertEqual(items[5], expectedItem(at: 5))
            XCTAssertEqual(items[6], expectedItem(at: 6))
            XCTAssertEqual(items[7], expectedItem(at: 7))
        case let .failure(error)?:
            XCTFail("Expected successful trainings result, got \(error) instead")
        default:
            XCTFail("Expected successful trainings result, got no result instead")
        }
    }
    
    // MARK: - Helpers
    
    private func expectedItem(at index: Int) -> TrainingsTodayItem {
        TrainingsTodayItem(
            id: id(at: index),
            horseName: horseName(at: index),
            date: nil,
            // TODO: Implement
//            date: date(at: index),
            location: location(at: index))
    }
    
    private func id(at index: Int) -> UUID {
        return UUID(uuidString: [
            "A284CD02-0EE1-4328-A037-584E0F2A1664",
            "6DA264BB-3E91-411C-B362-D7F6C458F770",
            "CEB356A8-B0A3-4FC0-8C73-80D117C5B93F",
            "F797F726-7E6D-4F04-84CF-F922691C24BF",
            "E9BCF7F1-B6E6-4622-91FC-2B87A26C4C65",
            "B5CA9D04-BF1D-4E08-A78E-92747E208674",
            "9EA083B9-040C-4C37-874E-C32E89F7E191",
            "0670E506-8348-4157-85AE-B43DD528A4F9"
        ][index])!
    }
    
    private func horseName(at index: Int) -> String {
        [
            "Horse 1",
            "Horse 2",
            "Horse 3",
            "Horse 4",
            "Horse 5",
            "Horse 6",
            "Horse 7",
            "Horse 8",
        ][index]
    }
    
    private func location(at index: Int) -> String {
        [
            "Location 1",
            "Location 2",
            "Location 3",
            "Location 4",
            "Location 5",
            "Location 6",
            "Location 7",
            "Location 8",
        ][index]
    }
}
