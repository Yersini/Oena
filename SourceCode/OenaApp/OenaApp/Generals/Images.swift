//
//  Images.swift
//  OenaApp
//
//  Created by yersini on 6/28/16.
//  Copyright © 2016 Josky. All rights reserved.
//

import Foundation
import UIKit

enum UIImageName:String {
    // Left bar icon
    case IC_Home = " "
    
    // Get Image from Name
    var image:UIImage {
        return UIImage(asset: self)
    }
}

extension UIImage {
    convenience init!(asset: UIImageName)  {
        self.init(named: asset.rawValue)
    }
}