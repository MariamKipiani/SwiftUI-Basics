//
//  RowStakView.swift
//  SwiftUI-Basics
//
//  Created by user on 12/7/23.
//

import SwiftUI

struct RowStackView: View {
    let rowData: Chat
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            profileImageView
            userInformationView
            Spacer()
            timeView
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(Color(.black))
    }
    
    private var profileImageView: some View {
        Image(rowData.profileImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 40)
            .clipShape(Circle())
    }
    
    private var userInformationView: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(rowData.name)
                .font(.system(size: 17))
                .foregroundColor(.white)
            Text(rowData.lastMessage)
                .font(.system(size: 12))
                .foregroundColor(Color(.gray))
        }
    }
    
    private var timeView: some View {
        Text(rowData.time)
            .font(.system(size: 12))
            .foregroundColor(Color(.gray))
    }
}

struct RowStackView_Previews: PreviewProvider {
    static var previews: some View {
        RowStackView(rowData: chats[0])
    }
}

