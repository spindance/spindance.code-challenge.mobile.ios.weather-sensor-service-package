//
// SpinDance
// Weather Sensor Service
//
// Copyright © 2022 SpinDance. All rights reserved.
//

import Foundation

extension WeatherSensorReadingType {
    public var description: String {
        let temp = temperature.toStringTwoDecimalPlaces
        let humidity = humidity.toStringTwoDecimalPlaces
        let time = DateFormatter.timestampFormatter.string(from: time)
        return NSLocalizedString("\(time): \(temp)°, \(humidity)%, \(pressure)kPa", comment: "")
    }
}

extension DateFormatter {
    fileprivate static var timestampFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-dd-MM HH:mm:ss.SSS"
        formatter.timeZone = TimeZone.current
        return formatter
    }()
}

extension Double {
    fileprivate var toStringTwoDecimalPlaces: String { String(format: "%.2f", self) }
    fileprivate var toStringFourDecimalPlaces: String { String(format: "%.4f", self) }
}
