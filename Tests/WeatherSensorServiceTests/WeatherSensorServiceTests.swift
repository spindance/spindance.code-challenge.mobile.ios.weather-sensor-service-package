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
        _ = WeatherSensorService.shared.reader as WeatherSensorReaderType
    }
}
