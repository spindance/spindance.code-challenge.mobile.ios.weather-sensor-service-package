//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

import Foundation

public protocol WeatherSensorReadingType: CustomStringConvertible {
    /// Temperature in degrees Celcius
    var temperature: Double { get }

    /// Percent humidity
    var humidity: Double { get }

    /// Barometric pressure in kiloPascals
    var pressure: Double { get }

    /// Reading timestamp
    var time: Date { get }
}
