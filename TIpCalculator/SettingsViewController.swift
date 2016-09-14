//
//  SettingsViewController.swift
//  TIpCalculator
//
//  Created by Andres Sandoval on 9/11/16.
//  Copyright © 2016 AndresSandoval. All rights reserved.
//


//Settings Page - purpose is for user to select the default tip percentage
//selection need to be safe (Loading and Saving) http://courses.codepath.com/snippets/intro_to_ios/prework.md#heading-loading-and-saving
 
import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //load the current tip index from the local storage.
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultTipIndex = defaults.integerForKey("default_tip")
        tipControl.selectedSegmentIndex = defaultTipIndex
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTip(sender: AnyObject) {
        var changedDefaultTip = tipControl.selectedSegmentIndex;
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(changedDefaultTip, forKey: "default_tip")
        defaults.synchronize()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
