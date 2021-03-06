//
//  ViewController.swift
//  swift sample
//
//  Created by wangkun on 15/2/9.
//  Copyright (c) 2015年 wangkun. All rights reserved.
//

import UIKit

class ViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var menuTitleArray: NSArray = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "SWIFT Sample"
        
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "reuseIdentifier")
        
        menuTitleArray = ["Basic UI",
            "HTTP Request",
            "PhotoKit",
            "SNS",
            "Touch ID",
            "Text to speech API",
            "UIDynamic Animation",
            "Manual Camera Controls",
            "HealthKit",
            "Handoff"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return  menuTitleArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        
        // Configure the cell...
        cell.textLabel?.text = menuTitleArray[indexPath.row] as NSString
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var cell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell?
        var cellTitle = cell?.textLabel?.text
        println("cell title: \(cellTitle)")
        
        if cellTitle == "Basic UI"
        {
            self.navigationController?.pushViewController(BasicUIViewController(), animated: true)
        }
        else if cellTitle == "HTTP Request"
        {
            self.navigationController?.pushViewController(HttpRequestViewController(), animated: true)
        }
        else if cellTitle == "PhotoKit"
        {
            //init view controller from main.storyboard
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("PhotoKitViewController") as PhotoKitViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if cellTitle == "SNS"
        {
            //init view controller from main.storyboard
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("SNSViewController") as SNSViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if cellTitle == "Touch ID"
        {
            //init view controller from main.storyboard
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("TouchIDViewController") as TouchIDViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if cellTitle == "Text to speech API"
        {
            //init view controller from main.storyboard
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("TextSpeechViewController") as TextSpeechViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if cellTitle == "UIDynamic Animation"
        {
            //init view controller from main.storyboard
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("DynamicAnimationViewController") as DynamicAnimationViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if cellTitle == "HealthKit"
        {
            //init view controller from main.storyboard
            //NOTICE : To enable HealthKit, you need to add Apple id account that is enrolled in a Developer Program
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewControllerWithIdentifier("HealthKitViewController") as HealthKitViewController
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else
        {
            self.showSimpleAlertView("Sorry", AndMessage: "this part is under developnig.")
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */

}

