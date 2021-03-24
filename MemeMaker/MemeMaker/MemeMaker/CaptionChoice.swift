//
//  CaptionChoice.swift
//  MemeMaker
//
//  Created by 이주원 on 2020/12/30.
//

import Foundation

struct CaptionOption {
    var emoji = ""
    var caption = ""
}

enum topEmoji {
    case red, yellow, blue
    var emoji : String {
        switch self {
        case .red:
            return "❤️"
        case .yellow:
            return "💛"
        case .blue:
            return "💙"
        }
    }
    var caption : String {
        switch self {
        case .red:
            return "You want red clothes!"
        case .yellow:
            return "You want yellow clothes!"
        case .blue:
            return "You want blue clothes!"
        }
    }
}


enum bottomEmoji {
    case top, bottom
    var emoji : String {
        switch self {
        case .top:
            return "👕"
        case .bottom:
            return "👖"
        }
    }
    var caption : String {
        switch self {
        case .top:
            return "How about this top?"
        case .bottom:
            return "How about this bottom?"
        }
    }
}
