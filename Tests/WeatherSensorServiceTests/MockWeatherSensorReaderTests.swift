//
// SpinDance
// Weather Sensor Service
//  
// Copyright © 2022 SpinDance. All rights reserved.
//

import XCTest

@testable import WeatherSensorService

class MockWeatherSensorReaderTests: XCTestCase {
    func test_weatherSensorServiceBehavior() throws {
        let sut: WeatherSensorReaderType = MockWeatherSensorReader()
        sut.set(readingInterval: 1)
        let newInterval = sut.readerInterval + 1
        XCTAssertEqual(newInterval, 2)
        sut.set(readingInterval: newInterval)
        XCTAssertEqual(newInterval, sut.readerInterval)
        _ = sut.sensorReadingsPublisher
        sut.startSensorReadings()
        sut.stopSensorReadings()
    }

    func test_readingIntervalMustBeGreaterThanZero() throws {
        let sut = MockWeatherSensorReader()
        let currentInterval = sut.readerInterval
        XCTAssertTrue(currentInterval > 0)
        sut.set(readingInterval: 0)
        XCTAssertEqual(currentInterval, sut.readerInterval)
    }

    func test_setReadingIntervalMinAndMax() throws {
        let sut = MockWeatherSensorReader()
        sut.set(readingInterval: UInt.max)
        XCTAssertEqual(UInt.max, sut.readerInterval)

        sut.set(readingInterval: 1)
        XCTAssertEqual(1, sut.readerInterval)
    }}
