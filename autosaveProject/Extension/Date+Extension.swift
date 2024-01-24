//
//  Date+Extension.swift
//  autosaveProject
//
//  Created by Asia Serrano on 12/16/23.
//

import Foundation

fileprivate enum DateEnum: String {
    case dashes = "yyyy-MM-dd"
    case dashless = "yyyyMMdd"
    case long = "MMMM d, y"
    case year = "yyyy"
    case timestamp = "yyyyMMdd-hhmmssa"
}

fileprivate extension DateFormatter {
    
    static func create(_ dateString: String) -> Date {
        DateFormatter(formatString: DateEnum.dashless.rawValue).date(from: dateString)!
    }
    
    static func format(_ date: Date, _ form: DateEnum) -> String {
        DateFormatter(formatString: form.rawValue).string(from: date)
    }
    
    private convenience init(formatString: String) {
        self.init()
        self.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale
        self.dateFormat = formatString
    }
    
}

public extension Date {
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.dashless == rhs.dashless
    }
    
    static var random: Self {
        let low: TimeInterval = Self(1900,1,1).timeIntervalSinceNow
        let high: TimeInterval = Self.now.timeIntervalSinceNow
        let time: TimeInterval = TimeInterval.random(in: low...high)
        return .init(timeIntervalSinceReferenceDate: time)
    }
    
    init(_ dashless: String) {
        self = DateFormatter.create(dashless)
    }
    
    init(_ year: Int, _ month: Int, _ day: Int) {
        
        func form(_ int: Int) -> String {
            String(format: "%02d", int)
        }
        
        self = .init("\(year)\(form(month))\(form(day))")
    }

    var long: String {
        DateFormatter.format(self, .long)
    }
    
    var dashless: String {
        DateFormatter.format(self, .dashless)
    }

    var year: String {
        DateFormatter.format(self, .year)
    }

    var dashes: String {
        DateFormatter.format(self, .dashes)
    }

}
