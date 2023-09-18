//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import SwiftUI

struct ExploreView: View {
    /// Properties
    @State private var searchText: String = String()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach( 0 ... 10, id:\.self){ user in
                        VStack {
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
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    ExploreView()
}
