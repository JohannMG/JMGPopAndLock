//
//  JMGPopLockViewController.swift
//  PopAndLockWrapper
//
//  Created by Johann Garces on 12/6/16.
//  Copyright © 2016 aaa.enterprise.johannmg.popandlock. All rights reserved.
//

import UIKit

class JMGPopLockViewController: UIViewController {
    
    
    var embeddedViewController: UIViewController!
    
    var hasSetupEmbedViewController = false
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Must provide init with viewController to embed")
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init(viewControllerToEmbed: UIViewController){
        self.init(nibName: nil, bundle: nil)
        
        self.embeddedViewController = viewControllerToEmbed
        setupEmbeddedViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Constraints And Frames
    
    private func setupEmbeddedViewController(){
        if (hasSetupEmbedViewController) {return}
        
        self.view.addSubview(embeddedViewController.view)
        embeddedViewController.didMoveToParentViewController(self)
        self.addChildViewController(embeddedViewController)
        embeddedViewController.view.frame = self.view.frame
        
        
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
