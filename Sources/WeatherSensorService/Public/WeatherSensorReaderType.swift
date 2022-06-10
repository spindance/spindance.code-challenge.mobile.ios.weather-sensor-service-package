//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

import Combine
import Foundation

public protocol WeatherSensorReaderType {
<<<<<<< HEAD
    /// The time interval in seconds at which weather sensor readings are published
    var readerInterval: UInt { get }
=======
    /// The time interval at which weather sensor readings are published
    var readerInterval: TimeInterval { get }
>>>>>>> main

    /// Publishes ``WeatherSensorReadingType`` every ``readerInterval`` seconds
    var sensorReadingsPublisher: AnyPublisher<WeatherSensorReadingType, Never> { get }

<<<<<<< HEAD
    /// Sets readerInterval; must be greater than 0
    func set(readingInterval: UInt)
=======
    /// Sets readerInterval
    func set(readingInterval: TimeInterval)
>>>>>>> main

    /// Starts the indefinite generation of weather sensor readings
    func startSensorReadings()

    /// Stop the generation of weather sensor readings
    func stopSensorReadings()
}
