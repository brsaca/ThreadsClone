//
//  ContentView.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 14/09/23.
//

import SwiftUI

struct ContentView: View {
    /// Properties
    @State private var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ThreadsTabView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
