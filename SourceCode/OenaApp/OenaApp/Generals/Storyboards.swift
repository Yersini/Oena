//
//  Storyboards.swift
//  OenaApp
//
//  Created by yersini on 6/28/16.
//  Copyright © 2016 Josky. All rights reserved.
//

import Foundation
import UIKit

// MARK: - INIT
protocol StoryboardSceneType {
    static var storyboardName: String { get }
}

extension StoryboardSceneType {
    static func storyboard() -> UIStoryboard {
        return UIStoryboard(name: self.storyboardName, bundle: nil)
    }
    
    static func initialViewController() -> UIViewController {
        return storyboard().instantiateInitialViewController()!
    }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
    func viewController() -> UIViewController {
        return Self.storyboard().instantiateViewControllerWithIdentifier(self.rawValue)
    }
    static func viewController(identifier: Self) -> UIViewController {
        return identifier.viewController()
    }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
    func performSegue<S: StoryboardSegueType where S.RawValue == String>(segue: S, sender: AnyObject? = nil) {
        performSegueWithIdentifier(segue.rawValue, sender: sender)
    }
}

// MARK: - Storyboard MAIN
struct StoryboardScene {
    enum OenaMain: String, StoryboardSceneType {
        static let storyboardName = "OenaMain"
        // Storyboard Name
        case LeftSideBarScreen = "LeftSideBarScreen"
        
        // Instantiate
        static func instantiateLeftSideBarScreen() -> LeftSideBarViewController {
            return StoryboardScene.OenaMain.LeftSideBarScreen.viewController() as! LeftSideBarViewController
        }
    }
}
