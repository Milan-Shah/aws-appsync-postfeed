//
//  Settings.swift
//  Postfeed
//
//  Created by Milan Shah on 5/10/20.
//  Copyright © 2020 Milan Shah. All rights reserved.
//

import Foundation

protocol SettingsSaver {
    func saveSettings (settings : Settings)
    func loadSettings()
}

protocol DateFormatForSettings {
    func formatDate(date : Date?) -> String
}

enum PostDateFormatStyle : Int {
    case short = 0
    case medium
    case long
}

enum SettingsKeys : String {
    case id = "id"
    case bio = "bio"
    case includeLocation = "IncludeLocation"
    case dateFormat = "DateFormat"
}

class Settings : DateFormatForSettings {
    var id = ""
    var bio = ""
    var includeLocation = false
    var dateFormat = PostDateFormatStyle.medium
    
    var delegate : SettingsSaver?
    
    func save() {
        guard let del = delegate else { return }
        del.saveSettings(settings: self)
    }
    
    func formatDate(date : Date? = nil) -> String {
        let dateVal = date ?? Date()
        let df = DateFormatter()
        
        switch dateFormat {
        case .short:
            df.dateStyle = .short
            df.timeStyle = .short
        case .medium:
            df.dateStyle = .medium
            df.timeStyle = .medium
        case .long:
            df.dateStyle = .long
            df.timeStyle = .long
        }
        
        return df.string(from: dateVal)
    }
    
}
