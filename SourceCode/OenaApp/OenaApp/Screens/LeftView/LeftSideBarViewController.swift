//
//  LeftSideBarViewController.swift
//  Oena
//
//  Created by yersini on 6/27/16.
//  Copyright © 2016 Oena. All rights reserved.
//

import UIKit

class LeftSideBarViewController: UIViewController {
    
    @IBOutlet weak var leftSideBarTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK: - Custom Methods
extension LeftSideBarViewController {
    func initUI() {
        
    }
}
