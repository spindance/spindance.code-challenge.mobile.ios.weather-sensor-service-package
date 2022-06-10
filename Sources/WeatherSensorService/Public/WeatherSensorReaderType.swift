//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

import Combine
import Foundation

public protocol WeatherSensorReaderType {
    /// The time interval in seconds at which weather sensor readings are published
    var readerInterval: UInt { get }

    /// Publishes ``WeatherSensorReadingType`` every ``readerInterval`` seconds
    var sensorReadingsPublisher: AnyPublisher<WeatherSensorReadingType, Never> { get }

    /// Sets readerInterval; must be greater than 0
    func set(readingInterval: UInt)

    /// Starts the indefinite generation of weather sensor readings
    func startSensorReadings()

    /// Stop the generation of weather sensor readings
    func stopSensorReadings()
}
