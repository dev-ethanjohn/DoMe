//
//  SideMenu.swift
//  DoMe
//
//  Created by Ethan John Paguntalan on 2/2/25.
//

import SwiftUI

struct SideMenu: View {
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                
                // TODO: Check layout later once home with list is created
                //                HStack(alignment: .bottom) {
                //                    Text("DoMe")
                //                        .font(.title)
                //                        .bold()
                //
                //                    Spacer()
                //                }
                //                .frame(height: 100, alignment: .bottom)
                //                .padding(.horizontal, 24)
                
                Text("DoMe")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 24)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(SideMenuItem.userSettingsMenuItems) { item in
                            SettingRow(item: item)
                        }
                        
                        Spacer()
                            .frame(height: 8)
                        
                        ForEach(SideMenuItem.feedbackMenuItems) { item in
                            SettingRow(item: item)
                        }
                        
                        Spacer()
                            .frame(height: 8)
                        
                        ForEach(SideMenuItem.infoMenuItems) { item in
                            SettingRow(item: item)
                        }
                    }
                    .padding(24)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        //.frame(maxWidth: .infinity, alignment: .leading)
        //Check layout
        //.background(.orange)
    }
}





#Preview {
    SideMenu()
}
