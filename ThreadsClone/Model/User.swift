//
//  User.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 19/09/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    let profileImageUrl: String?
    let bio: String?
}
