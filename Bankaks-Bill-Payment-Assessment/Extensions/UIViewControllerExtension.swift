//
//  File.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import UIKit

extension UIViewController{
    
    func getVCfromStoryboard(storyboard: String, VCIdentifier: String) -> UIViewController{
        let viewcontroller = UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(identifier: VCIdentifier)
        return viewcontroller
    }
    
    func showError(_ error: Error) {
        let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { [unowned self] _ in
            self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
