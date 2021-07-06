//
//  Profile.swift
//  Landmarks
//
//  Created by Harshvardhan Basava on 06/07/21.
//

import Foundation

struct Profile{
    var username: String
    var prefersNotificaitons = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "harshbsv")
    
    enum Season: String, CaseIterable, Identifiable{
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "⛄️"
        var id: String { self.rawValue }
    }
}
