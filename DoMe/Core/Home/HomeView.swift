//
//  HomeView.swift
//  DoMe
//
//  Created by Ethan John Paguntalan on 2/2/25.
//

import SwiftUI

//MARK: Todayview with the sidemenu
struct HomeView: View {

    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            SideMenu()
            
            TodayView()
        }
    }
}

#Preview {
    HomeView()
}
