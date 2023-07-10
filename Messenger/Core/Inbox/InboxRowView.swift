//
//  InboxRowView.swift
//  Messenger
//
//  Created by Timur Kadiev on 10.07.2023.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack (alignment: .top, spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(Color(.systemGray4))
            VStack (alignment: .leading, spacing: 4){
                Text ("heath Ledger")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Some test messege for now that spans more that one line")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack {
                Text ("Yesterday")
                
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(.gray)
        }
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView()
}
