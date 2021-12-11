//
//  CommentsViewModel.swift
//  5_PassthroughSubjects
//
//  Created by Ryan J. W. Kim on 2021/12/11.
//

import Foundation
import Combine

final class CommentsViewModel {
    private let commentEntered = PassthroughSubject<String, Never>()
    private var subscriptions = Set<AnyCancellable>()
    
    private let badWords = ["Fuck", "Shit"]
    
    private let manager: AccountViewModel
    
    init(manager: AccountViewModel) {
        self.manager = manager
        setupSubscriptions()
    }
    func send(comment: String) {
        commentEntered.send(comment)
    }
}

private extension CommentsViewModel {
    
    func setupSubscriptions() {
        
        commentEntered
            .filter({ !$0.isEmpty })
            .sink { [weak self] val in
                guard let self = self else { return }
                
                if self.badWords.contains(val) {
                    self.manager.increaseWarning()
                } else {
                print("New Comment: \(val)")
                }
            }
            .store(in: &subscriptions)

    }
}
