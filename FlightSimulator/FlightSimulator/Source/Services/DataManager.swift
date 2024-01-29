//
//  DataManager.swift
//  FlightSimulator
//
//  Created by Герман Яренко on 29.01.24.
//

import Foundation
final class DateManager {
    
    static func getCurrentDateWithFormatYYYYMMDD() -> String {
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: currentDate)
    }

    static func formatDate(stringDate: String) -> String {
        var timeString = ""
        var timeZoneOffsetString = ""
        if let range = stringDate.range(of: "T") {
            timeString = String(stringDate[range.upperBound...].prefix(5))
        }
        if let range = stringDate.range(of: "+") {
            timeZoneOffsetString = String(stringDate[range.upperBound...].prefix(2))
        }
        return "\(timeString) GMT+\(timeZoneOffsetString)"
    }
}
