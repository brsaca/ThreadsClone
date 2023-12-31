//
//  User.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 19/09/23.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
