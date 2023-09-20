//
//  CurrentUserProfileView.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 20/09/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    /// Properties
    @StateObject private var viewModel = CurrentUserProfileViewModel()
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace private var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                /// Bio and stats
                ProfileHeaderView(user: currentUser)
                
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .frame(width: 352, height: 32)
                        .background(.white)
                        .cornerRadius(8)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray4), lineWidth: 1)
                        }
                }
                
                /// user content list view
                UserContentListView()
            }
        }
        .padding(.horizontal)
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
