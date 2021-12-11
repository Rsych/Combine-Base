//
//  UIViewController+Alert.swift
//  5_PassthroughSubjects
//
//  Created by Ryan J. W. Kim on 2021/12/11.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showBlocked() {
        
        let alert = UIAlertController(title: "Ooops",
                                      message: "Thought you were tough right? Well guess what you're banned",
                                      preferredStyle: .alert)
        self.present(alert,
                     animated: true)
    }
}
