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
                            UserCell()
                            
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
