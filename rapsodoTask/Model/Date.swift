//
//  Date.swift
//  rapsodoTask
//
//  Created by Çağrı Tuğberk MASAT on 9.01.2020.
//

import Foundation

extension Date {
   
    func format(format:String = "dd-MM-yyyy") -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateString = dateFormatter.string(from: self)
        if let newDate = dateFormatter.date(from: dateString) {
            return newDate
        } else {
            return self
        }
    }
}
