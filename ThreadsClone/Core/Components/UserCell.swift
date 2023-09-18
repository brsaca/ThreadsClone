//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("brsaca")
                    .fontWeight(.semibold)
                
                Text("Brenda SC")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Folow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
