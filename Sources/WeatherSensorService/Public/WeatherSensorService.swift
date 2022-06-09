//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

public struct WeatherSensorService {
    public static let shared = WeatherSensorService()
    public let reader: WeatherSensorReaderType = MockWeatherSensorReader()
    private init() {}
}
