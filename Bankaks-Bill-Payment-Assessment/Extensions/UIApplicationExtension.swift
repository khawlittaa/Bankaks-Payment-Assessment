//
//  UIApplicationExtension.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 2/12/2020.
//

import UIKit

extension UIApplication{
    
    class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }

        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        
        return base
    }

}
