//
//  UserError.swift
//  4_CurrentValueSubject
//
//  Created by Ryan J. W. Kim on 2021/12/11.
//

import Foundation

enum UserError: Error {
    case invalid
}

extension UserError {
    
    public var errorDescription: String {
        switch self {
        case .invalid:
            return "Form is invalid"
        }
    }
}
