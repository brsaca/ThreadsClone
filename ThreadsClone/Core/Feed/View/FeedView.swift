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
        }
    }
}

#Preview {
    FeedView()
}
