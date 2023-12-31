//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import SwiftUI

struct ThreadCell: View {
    /// Properties
    let thread: Thread?
    
    init(thread: Thread?) {
        self.thread = thread
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView(user: thread?.user, size: .small)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack{
                        Text(thread?.user?.username ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text(thread?.timestamp.timestampString() ?? "")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    Text(thread?.caption ?? "")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                          Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                          Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        } label: {
                          Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        } label: {
                          Image(systemName: "paperplane")
                        }
                    }
                    .padding(.vertical, 8)
                    .tint(.black)
                }
            }
            
            Divider()
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell(thread: dev.thread)
    }
}
