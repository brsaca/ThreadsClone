//
//  ExploreViewModel.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 19/09/23.
//

import Foundation
import Combine

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    @Published var searchText: String = String()
    
    init() {
        Task{ try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}

