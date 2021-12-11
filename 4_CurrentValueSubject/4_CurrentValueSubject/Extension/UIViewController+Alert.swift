//
//  UIViewController+Alert.swift
//  4_CurrentValueSubject
//
//  Created by Ryan J. W. Kim on 2021/12/11.
//
import UIKit

extension UIViewController {
    
    func showFailed(message: String) {
        
        let alert = UIAlertController(title: "Failed",
                                      message: message,
                                      preferredStyle: .alert)
        alert.addAction(.init(title: "Ok",
                              style: .cancel))
        self.present(alert,
                     animated: true)
    }
}
