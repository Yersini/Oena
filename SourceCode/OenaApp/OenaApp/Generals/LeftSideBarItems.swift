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
    
    var displayName:String {
        return rawValue.capitalizedString
    }
}

extension LeftSideBarItem {
    static let values:[LeftSideBarItem] = {
        return [.Home, .Logout]
    }()
}
