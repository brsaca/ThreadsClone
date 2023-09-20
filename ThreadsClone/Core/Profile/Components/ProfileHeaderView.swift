//
//  ProfileHeaderView.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 20/09/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    /// Properties
    let user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    var body: some View {
        HStack (alignment: .top){
            VStack(alignment: .leading, spacing: 12){
                /// fullname and username
                VStack(alignment: .leading, spacing: 4){
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            CircularProfileImageView(user: user)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: dev.user)
    }
}
