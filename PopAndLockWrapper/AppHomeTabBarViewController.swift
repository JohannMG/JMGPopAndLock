//
//  AppHomeTabBarViewController.swift
//  PopAndLockWrapper
//
//  Created by Johann Garces on 12/6/16.
//  Copyright © 2016 aaa.enterprise.johannmg.popandlock. All rights reserved.
//

import UIKit
import PopAndLock

class AppHomeTabBarViewController: UITabBarController {
    
    let secondViewEntryIdentifier = "secondViewEntry"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setPopLockViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setPopLockViewController(){
        
        if self.viewControllers?.count < 2 { return }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil )
        guard let viewToBlock = storyboard.instantiateViewControllerWithIdentifier(secondViewEntryIdentifier) as? UINavigationController
            else { return }
        
        let blockedView = PopAndLock.getLockViewControllerWithLockingView(viewToBlock)
        
        self.viewControllers![1] = blockedView
        
        
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
