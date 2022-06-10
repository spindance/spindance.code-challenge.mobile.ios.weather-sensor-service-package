//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

import Combine
import Foundation

private enum Constants {
    static let readerInterval: UInt = 1
    static let temperatureRange = -40.0...40.0
    static let humidityRange = 0.0...100.0
    static let pressureRange = 95.0...105.0
}

class MockWeatherSensorReader: WeatherSensorReaderType {
    private var timer: Timer?

    private(set) var readerInterval = Constants.readerInterval {
        didSet {
            guard oldValue != readerInterval else { return }

            // If we were reporting, restart.
            if timer != nil {
                startSensorReadings()
            }
        }
    }

    private let sensorReadingsSubject = PassthroughSubject<WeatherSensorReadingType, Never>()

    var sensorReadingsPublisher: AnyPublisher<WeatherSensorReadingType, Never> {
        sensorReadingsSubject.eraseToAnyPublisher()
    }

    func set(readingInterval: UInt) {
        guard 1...UInt.max ~= readingInterval else { return }
        readerInterval = readingInterval
    }

    func startSensorReadings() {
        stopSensorReadings()

        // Report the first reading immediately, then start the timer
        reportSensorReadings()

        timer = Timer.scheduledTimer(
            withTimeInterval: TimeInterval(readerInterval),
            repeats: true
        ) { [weak self] _ in
            guard let self = self else { return }
            self.reportSensorReadings()
        }
    }

    func stopSensorReadings() {
        timer?.invalidate()
        timer = nil
    }

    private func reportSensorReadings() {
        sensorReadingsSubject.send(
            WeatherSensorReading(
                temperature: Double.random(in: Constants.temperatureRange),
                humidity: Double.random(in: Constants.humidityRange),
                pressure: Double.random(in: Constants.pressureRange),
                time: Date()
            )
        )
    }
}
