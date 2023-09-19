//
//  LoginViewModel.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 19/09/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = String()
    @Published var password: String = String()
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(
                    withEmail: email,
                    password: password
        )
    }
}
