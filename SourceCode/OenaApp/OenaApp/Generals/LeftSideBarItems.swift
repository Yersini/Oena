//
//  LeftSideBarItems.swift
//  OenaApp
//
//  Created by yersini on 6/27/16.
//  Copyright © 2016 Josky. All rights reserved.
//

import Foundation

enum LeftSideBarItem:String {
    case Home = "home"
    case Logout = "logout"
    
    // Chữ đầu viết hoa
    var displayName:String {
        return rawValue.capitalizedString
    }
    
    var iconName:String {
        get {
            switch self {
            case .Home:
                return UIImageName.IC_Home.rawValue
            default:
                return ""
            }
        }
    }
    
}

extension LeftSideBarItem {
    static let values:[LeftSideBarItem] = {
        return [.Home, .Logout]
    }()
}
