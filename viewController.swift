//
//  ViewController.swift
//  ibeacon
//
//  Created by Billy Farroll on 16/03/2016.
//  Copyright © 2016 Billy Farroll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendNotification(sender: AnyObject) {
    
    let notification = UILocalNotification()
         notification.fireDate = NSDate(timeIntervalSinceNow: 8)
          notification.alertBody = "You have a notification"
           notification.alertAction = "Take action"
            notification.soundName = UILocalNotificationDefaultSoundName
             notification.userInfo = ["MyInfo":"Do Something..."]
              UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    }
    
    //Diffrence between a remote and local is that local notification is set and remote is sent from the server
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

