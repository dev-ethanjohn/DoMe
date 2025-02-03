//
//  SettingRow.swift
//  DoMe
//
//  Created by Ethan John Paguntalan on 2/2/25.
//

import SwiftUI

struct SettingRow: View {
    let item: SideMenuItem
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: item.systemImageName)
                .foregroundColor(.gray)
                .frame(width: 24, height: 24, alignment: .leading)
            
            Text(item.settingTitle)
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(Color.black)
                .frame(alignment: .leading)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 4)
        .onTapGesture {
            //... soon to add 
        }
    }
}


#Preview {
    SettingRow(item: SideMenuItem(settingTitle: "Notification Settings", systemImageName: "bell"))
}
