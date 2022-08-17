//
// SpinDance
// Weather Sensor Service
//  
// Copyright © 2022 SpinDance. All rights reserved.
//

import XCTest

@testable import WeatherSensorService

class ClosedRangeExtenstionTests: XCTestCase {
    func test_readingsGeneration() throws {
        let range: ClosedRange<Double> = -50.0...50.0
        XCTAssertEqual("3.1395",range.calculateSineWaveReading(cyclePercentage: 1.0/100.0).toStringFourDecimalPlaces)
        XCTAssertEqual("50.0000",range.calculateSineWaveReading(cyclePercentage: 25.0/100.0).toStringFourDecimalPlaces)
        XCTAssertEqual("0.0000",range.calculateSineWaveReading(cyclePercentage: 50.0/100.0).toStringFourDecimalPlaces)
        XCTAssertEqual("-50.0000",range.calculateSineWaveReading(cyclePercentage: 75.0/100.0).toStringFourDecimalPlaces)
        XCTAssertEqual("-0.0000",range.calculateSineWaveReading(cyclePercentage: 100.0/100.0).toStringFourDecimalPlaces)
    }
}
