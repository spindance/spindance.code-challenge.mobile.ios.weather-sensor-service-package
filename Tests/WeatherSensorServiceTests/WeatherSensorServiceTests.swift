//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

import WeatherSensorService
import XCTest

final class WeatherSensorServiceTests: XCTestCase {
    /// Simply verify the singleton supports a ``WeatherSensorReaderType``
    func testWeatherSensorService() throws {
<<<<<<< HEAD
        _ = WeatherSensorService.shared.reader as WeatherSensorReaderType
=======
        let sut = WeatherSensorService.shared.reader
        let newInterval = sut.readerInterval + 1
        sut.set(readingInterval: newInterval)
        XCTAssertEqual(newInterval, sut.readerInterval)
        _ = sut.sensorReadingsPublisher
        sut.startSensorReadings()
        sut.stopSensorReadings()
>>>>>>> main
    }
}
