//
//  UserService.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 19/09/23.
//

import Firebase
import FirebaseFirestoreSwift

class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task { try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
        
        print("DEBUG: UserService user is \(user)")
    }
    
    func reset() {
        self.currentUser = nil
    }
}
