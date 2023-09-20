//
//  PreviewProvider.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 19/09/23.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}


class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Brenda Saavedra", email: "brsaca@gmail.com", username: "brsaca", profileImageUrl: "https://firebasestorage.googleapis.com:443/v0/b/threads-9e634.appspot.com/o/profile_images%2F6831423D-7BEB-45B5-80C5-E62C8221427B?alt=media&token=5c0660df-149b-4628-b30c-f55de3febe29", bio: nil)
    
    let thread = Thread(ownerId: NSUUID().uuidString, caption: "This is a mock of a thread", timestamp: Timestamp(), likes: 0)
}
