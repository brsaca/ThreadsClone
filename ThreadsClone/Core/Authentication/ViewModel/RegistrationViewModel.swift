//
//  RegistrationViewModel.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email: String = String()
    @Published var password: String = String()
    @Published var fullname: String = String()
    @Published var username: String = String()
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
                    withEmail: email,
                    password: password,
                    fullname: fullname,
                    username: username
        )
    }
}
