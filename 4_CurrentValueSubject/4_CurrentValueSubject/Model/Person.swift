//
//  Person.swift
//  4_CurrentValueSubject
//
//  Created by Ryan J. W. Kim on 2021/12/11.
//

import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var occupation: String
}

extension Person {
   
    var message: String {
        "\(firstName) \(lastName) is a \(occupation)"
    }
    
    var isValid: Bool {
        !firstName.isEmpty && !lastName.isEmpty && !occupation.isEmpty
    }
}
