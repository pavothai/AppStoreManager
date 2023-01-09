//
//  AppStoreManagerConstant.swift
//  AppStoreManager
//
//  Created by Developer on 16/3/21.
//

import Foundation

struct AppStoreManagerConstant {
    static let alertTitle = "Update is available"
    static let alertMessage = "There is a new update version for support new devices and features."
    static let skipButtonTitle = "NOT NOW"
    static let updateButtonTitle = "UPDATE NOW"
}

extension Date {
    static func days(since date: Date) -> Int {
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar.dateComponents([.day], from: date, to: Date())
        return components.day ?? 0
    }
}

extension String {
    func toDate(with format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from: self)
        return date
    }
}
