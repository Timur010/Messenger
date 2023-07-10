//
//  NewMessengeView.swift
//  Messenger
//
//  Created by Timur Kadiev on 10.07.2023.
//

import SwiftUI

struct NewMessengeView: View {
    @State private var searchText = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("To: ", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                Text ("Contacts")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                ForEach(0...10, id: \.self) { user in
                    VStack {
                        HStack {
                            Image (systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(Color(.systemGray4))
                            Text("Chadwick Bozeman")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Divider()
                            .padding(.leading, 40)
                    }
                }
            }
            .navigationTitle("NewMessege")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cansel") {
                        dismiss()
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    NewMessengeView()
}
