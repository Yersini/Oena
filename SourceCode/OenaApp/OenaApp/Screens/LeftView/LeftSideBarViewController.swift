//
//  LeftSideBarViewController.swift
//  Oena
//
//  Created by yersini on 6/27/16.
//  Copyright © 2016 Oena. All rights reserved.
//

import UIKit

// MARK: - Identifier Cell
private let heightLeftSideBarCell:CGFloat = 50

class LeftSideBarViewController: UIViewController {
    
    @IBOutlet weak var leftSideBarTableView: UITableView!
    
    let leftSideBarItems:[LeftSideBarItem] = LeftSideBarItem.values
    let presentedRow:NSInteger = -1

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

extension LeftSideBarViewController:UITableViewDataSource, UITableViewDelegate {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leftSideBarItems.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return heightLeftSideBarCell
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = cellForTableView(tableView, atIndexPath: indexPath)
        
        return cell
    }
    
    func cellForTableView(tableView: UITableView, atIndexPath: NSIndexPath) -> LeftSideBarTableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifiers.Identifier_LeftSideBarCell.rawValue) as! LeftSideBarTableViewCell
        //TODO: - Push data cell here!
        let cellData = leftSideBarItems[atIndexPath.row]
        cell.titleLabel.text = cellData.displayName
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let revealController:SWRevealViewController = self.revealViewController()
        let indexRow = indexPath.row
        switch indexRow {
        case LeftSideBarItem.values.indexOf(LeftSideBarItem.Home)!:
            
            break
            
        default:
            break
        }
        if indexRow == presentedRow {
            revealController.setFrontViewPosition(FrontViewPosition.Left, animated: true)
        }
    }
}
