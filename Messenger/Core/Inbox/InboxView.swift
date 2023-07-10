//
//  InboxView.swift
//  Messenger
//
//  Created by Timur Kadiev on 10.07.2023.
//

import SwiftUI

struct InboxView: View {
    @State private var showNewMessengerView = false
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
                List {
                    ForEach (0...10, id: \.self) { messenge in
                        InboxRowView()
                    }
                }
                .fullScreenCover(isPresented: $showNewMessengerView, content: {
                   NewMessengeView()
                })
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                        
                        Text("Chat")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showNewMessengerView.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray5))
                    }
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
