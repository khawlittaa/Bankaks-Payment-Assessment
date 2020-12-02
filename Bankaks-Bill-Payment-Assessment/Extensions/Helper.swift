//
//  Helper.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 2/12/2020.
//


import Foundation
import UIKit

func showActivityIndicatory() {
    
    let loadingView = LoadingView(frame: UIScreen.main.bounds)
    UIApplication.topViewController()?.view.addSubview(loadingView)
    
    objc_setAssociatedObject(UIApplication.topViewController(), &ActivityIndicatorViewInSuperviewAssociatedObjectKey, loadingView, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
}

func hideActivityIndicatory()  {
    
    if let ActivityIndicatory = objc_getAssociatedObject(UIApplication.topViewController(), &ActivityIndicatorViewInSuperviewAssociatedObjectKey) {
        
        (ActivityIndicatory as AnyObject).removeFromSuperview()
        
    }
}

var ActivityIndicatorViewInSuperviewAssociatedObjectKey = "_UIViewActivityIndicatorViewInSuperviewAssociatedObjectKey";


func isValid(_ stringText: String, stringRegEx: String) -> Bool{
    
    let string = NSPredicate(format:"SELF MATCHES %@", stringRegEx)
    return string.evaluate(with: stringText)
}
