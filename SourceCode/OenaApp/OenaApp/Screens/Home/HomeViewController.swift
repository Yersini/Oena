//
//  HomeViewController.swift
//  Oena
//
//  Created by yersini on 6/27/16.
//  Copyright © 2016 Oena. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var leftButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - Actions
extension HomeViewController {
    @IBAction func leftButtonAction(sender: AnyObject) {
        guard let revealViewController:SWRevealViewController = self.revealViewController() else { return }
        revealViewController.revealToggle(nil)
    }
}

// MARK: - Custom methods 
extension HomeViewController {
    func initUI() {
        settingLeftBar()
    }
    
    func settingLeftBar() {
        guard let revealViewController:SWRevealViewController = self.revealViewController() else { return }
        view.addGestureRecognizer(revealViewController.panGestureRecognizer())
        view.addGestureRecognizer(revealViewController.tapGestureRecognizer())
    }
}
