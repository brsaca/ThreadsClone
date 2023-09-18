//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Brenda Saavedra Cantu on 18/09/23.
//

import SwiftUI

struct RegistrationView: View {
    /// Environment
    @Environment(\.dismiss) var dismiss
    /// Properties
    @State private var email: String = String()
    @State private var password: String = String()
    @State private var fullname: String = String()
    @State private var username: String = String()
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("thread_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(ThreadsTextFieldModifiers())
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifiers())
                    .keyboardType(.alphabet)
                
                TextField("Enter your fullname", text: $fullname)
                    .modifier(ThreadsTextFieldModifiers())
                    .keyboardType(.namePhonePad)
                
                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifiers())
                    .keyboardType(.alphabet)
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack (spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
