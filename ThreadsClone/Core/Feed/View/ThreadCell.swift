//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("bren")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack{
                        Text("brsaca")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    Text("iOS Developer")
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

#Preview {
    ThreadCell()
}