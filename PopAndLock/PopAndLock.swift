
//  PopAndLockWrapper
//  Created by Johann Garces on 12/6/16.

import UIKit

public class PopAndLock {
    
    public class func getLockViewControllerWithLockingView(lockableViewController: UIViewController) -> UIViewController {
        return JMGPopLockViewController.init(viewControllerToEmbed: lockableViewController)
    }
    
}