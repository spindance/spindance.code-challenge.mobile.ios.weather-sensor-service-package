//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

import Foundation

struct WeatherSensorReading: WeatherSensorReadingType {
    let temperature: Double
    let humidity: Double
    let pressure: Double
    let time: Date
}
