//
//  RegistrationView.swift
//  Messenger
//
//  Created by Timur Kadiev on 10.07.2023.
//

import SwiftUI

        struct RegistrationView: View {
            @State private var email = ""
            @State private var password = ""
            @State private var fulname = ""
            @Environment(\.dismiss) var dismiss
            var body: some View {
                VStack {
                    Spacer()
                    Image("MessengerIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding()
                    VStack {
                        TextField("Enter your email", text: $email)
                            .font(.subheadline)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 24)
                        
                        TextField("fulname", text: $fulname)
                            .font(.subheadline)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 24)
                        
                        SecureField("Enter your password", text: $password)
                            .font(.subheadline)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 24)
                    }
                    
                    Button {
                        print("Handle login")
                    } label: {
                        Text("Sign Up")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(10)
                    }
                    .padding(.vertical)
                    
                   Spacer()
                    
                    Divider()
                    
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Text("Already have an account?")
                            Text("Sign In")
                                .fontWeight(.semibold)
                        }
                    }
                    .font(.footnote)
                }
            }
        }

        #Preview {
            RegistrationView()
        }
