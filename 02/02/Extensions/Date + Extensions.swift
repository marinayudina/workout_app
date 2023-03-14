//
//  Date + Extensions.swift
//  02
//
//  Created by Марина on 08.03.2023.
//

import Foundation


extension Date {
    
    func getWeekdayNumber() -> Int {
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: self) //self -Date
        return weekday
    }
}
