//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { thread in
                        /// Cells of threads
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                }
                .tint(.black)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            FeedView()
        }
    }
}
