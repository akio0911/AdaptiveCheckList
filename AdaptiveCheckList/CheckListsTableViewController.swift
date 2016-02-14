//
//  CheckListsTableViewController.swift
//  AdaptiveCheckList
//
//  Created by akio0911 on 2016/02/14.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import UIKit

class CheckListsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.title = "チェックリスト"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataManager.sharedManager.checkLists.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell1", forIndexPath: indexPath)

        let list = DataManager.sharedManager.checkLists[indexPath.row]
        
        cell.textLabel?.text = list.name

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let list = DataManager.sharedManager.checkLists[indexPath.row]
        let nav = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewControllerWithIdentifier("CheckItemsNav")
            as! UINavigationController
        let vc = nav.topViewController as! CheckItemsTableViewController
        vc.checkList = list
        showDetailViewController(nav, sender: tableView.cellForRowAtIndexPath(indexPath))
    }
}
