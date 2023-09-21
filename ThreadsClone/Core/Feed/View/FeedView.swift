//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import SwiftUI

struct FeedView: View {
    /// Properties
    @StateObject private var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                LazyVStack {
                    ForEach(viewModel.threads) { thread in
                        /// Cells of threads
                        ThreadCell(thread: thread)
                    }
                }
            }
            .refreshable {
                do {
                    // Sleep for 2 seconds
                    try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
                    Task{ try await viewModel.fetchThreads() }
                } catch {}
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
